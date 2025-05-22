import os
import pyslang
import pandas as pd
import pandasql
from svql.ast_visitors import port_visitor, param_visitor
from svql.utils import attr_utils


class Module:
    def __init__(self, file_path: str, top: str = None):
        self.file_path = file_path
        self.file_name = os.path.splitext(os.path.basename(file_path))[0]
        self.ast = pyslang.SyntaxTree.fromFile(file_path)
        
        self.set_top_module(top)
        self.name = self.module.header.name.value        
        self.params = pd.DataFrame(columns=[
            "name", "dtype", "default_value", 
            "override_value", "scope", "typed_param"
        ])
        self.ports = pd.DataFrame(columns=[
            "name", "dtype", "width", "direction", "connected_to"
        ])
        self.tables = {
            "params": self.params,
            "ports": self.ports
        }

        self.build()

    def build(self) -> None:
        self._build_params()
        self._build_ports()
        self._update_tables()

    def set_top_module(self, top: str = None) -> None:
        target_name = top if top is not None else self.file_name
        
        for module in self.ast.root.members:
            if module.header.name.value == target_name:
                self.module = module
                return

        raise ValueError(f"Module {self.file_name} not found in {self.file_path}")

    def _build_params(self) -> None:
        if self.module.header.parameters is None:
            return
            
        root = self.module.header.parameters.declarations
        visitor = param_visitor.ParamVisitor()
        
        for decl in root: visitor.visit(decl)

        self.params = pd.DataFrame(visitor.params)

    def _build_ports(self) -> None:
        visitor = port_visitor.PortVisitor()

        for port in self.module.header.ports.ports: visitor.visit(port)

        if len(visitor.ports) == 0:
            for member in self.module.members: visitor.visit(member)

        self.ports = pd.DataFrame(visitor.ports)

    def _build_submodule_instances(self) -> None:
        root = self.module
        pass

    def _update_tables(self) -> None:
        self.tables["params"] = self.params
        self.tables["ports"] = self.ports

    query = lambda self, q: pandasql.sqldf(q, self.tables)

    def print(self) -> None:
        print("Module: ", self.name)
        print("Parameters: \n", self.params)
        print("Ports: \n", self.ports)

    def get_flattened_stub(self) -> str:
        stub_lines = []
        stub_lines.append(f"module {self.name}_flattened (")
        
        port_declarations = []
        
        for _, port in self.ports.iterrows():
            port_name = port['name']
            direction = port['direction']
            dtype = port['dtype'] if port['dtype'] else 'wire'
            width = port['width'] if port['width'] and port['width'] != '[0:0]' else ''
            dimensions = port['dimensions'] if port['dimensions'] and port['dimensions'] != '[0:0]' else ''
            
            evaluated_width = self._evaluate_width_expression(width) if width else ''
            
            if dimensions and dimensions != '[0:0]':
                flattened_ports = self._flatten_port(port_name, direction, dtype, evaluated_width, dimensions)
                port_declarations.extend(flattened_ports)
            else:
                width_str = f" {evaluated_width}" if evaluated_width else ""
                port_declarations.append(f"    {direction} {dtype}{width_str} {port_name}")
        
        if port_declarations:
            stub_lines.append(",\n".join(port_declarations))
        
        stub_lines.append(");")
        stub_lines.append("")
        stub_lines.append("endmodule")
        
        return "\n".join(stub_lines)
    
    def _flatten_port(self, port_name: str, direction: str, dtype: str, width: str, dimensions: str) -> list:
        import re
        dimension_matches = re.findall(r'\[([^\]]+)\]', dimensions)
        
        if not dimension_matches:
            width_str = f" {width}" if width else ""
            return [f"    {direction} {dtype}{width_str} {port_name}"]
        
        dimension_values = []
        total_elements = 1
        
        for dim_expr in dimension_matches:
            try:
                evaluated_dim = self._evaluate_dimension_expression(dim_expr)
                dimension_values.append(evaluated_dim)
                total_elements *= evaluated_dim
            except:
                dimension_values.append(4)
                total_elements *= 4
        
        if total_elements > 1:
            packed_dimension = f"[{total_elements-1}:0]"
        else:
            packed_dimension = ""
        
        width_str = f" {width}" if width else ""
        packed_dimension_str = f" {packed_dimension}" if packed_dimension else ""
        
        return [f"    {direction} {dtype}{width_str} {port_name}{packed_dimension_str}"]
    
    def _evaluate_dimension_expression(self, expr: str) -> int:
        context = {}
        for _, param in self.params.iterrows():
            param_name = param['name']
            param_value = param['override_value'] if param['override_value'] is not None else param['default_value']
            try:
                context[param_name] = int(param_value)
            except:
                context[param_name] = param_value
        
        try:
            evaluated_expr = expr
            for param_name, param_value in context.items():
                evaluated_expr = evaluated_expr.replace(param_name, str(param_value))
            
            return eval(evaluated_expr, {"__builtins__": {}}, {})
        except:
            raise ValueError(f"Cannot evaluate dimension expression: {expr}")
    
    def _evaluate_width_expression(self, width_expr: str) -> str:
        if not width_expr or width_expr == '[0:0]':
            return ''
        
        context = {}
        for _, param in self.params.iterrows():
            param_name = param['name']
            param_value = param['override_value'] if param['override_value'] is not None else param['default_value']
            try:
                context[param_name] = int(param_value)
            except:
                context[param_name] = param_value
        
        try:
            import re
            range_match = re.match(r'\[([^\]]+)\]', width_expr)
            if not range_match:
                return width_expr
            
            range_expr = range_match.group(1)
            
            if ':' in range_expr:
                parts = range_expr.split(':')
                if len(parts) == 2:
                    left_expr, right_expr = parts
                    
                    evaluated_left = self._evaluate_simple_expression(left_expr.strip(), context)
                    evaluated_right = self._evaluate_simple_expression(right_expr.strip(), context)
                    
                    return f"[{evaluated_left}:{evaluated_right}]"
            
            evaluated_expr = self._evaluate_simple_expression(range_expr, context)
            return f"[{evaluated_expr}]"
            
        except:
            return width_expr
    
    def _evaluate_simple_expression(self, expr: str, context: dict) -> str:
        try:
            evaluated_expr = expr
            for param_name, param_value in context.items():
                evaluated_expr = evaluated_expr.replace(param_name, str(param_value))
            
            result = eval(evaluated_expr, {"__builtins__": {}}, {})
            return str(result)
        except:
            return expr

    

