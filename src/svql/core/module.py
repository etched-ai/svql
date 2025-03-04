import os
import pyslang
import pandas as pd
import pandasql
from svql.ast_visitors import port_visitor, param_visitor
from svql.utils import attr_utils


class Module:
    def __init__(self, file_path: str):
        self.file_path = file_path
        self.file_name = os.path.splitext(os.path.basename(file_path))[0]
        self.ast = pyslang.SyntaxTree.fromFile(file_path)
        
        self.set_top_module()
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

        # Build all tables
        self.build()

    def build(self) -> None:
        self._build_params()
        self._build_ports()
        self._update_tables()

    def set_top_module(self) -> None:
        for module in self.ast.root.members:
            if module.header.name.value == self.file_name:
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

    

