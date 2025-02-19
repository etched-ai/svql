import pyslang
from typing import Dict, Set, Optional
from dataclasses import dataclass
from util import clean_port_string
import pandas as pd
from param import Param
from port import Port
import pandasql

class Module:
    def __init__(self, file_path: str):
        self.file_path = file_path
        self.ast = pyslang.SyntaxTree.fromFile(file_path)
        self.raw_code = self.ast.root.members[0]

        # Module properties
        self.header = self.raw_code.header.name.value        
        self.params = pd.DataFrame(columns=[
            "name", "dtype", "default_value", 
            "override_value", "scope", "typed_param"
        ])
        self.ports = pd.DataFrame(columns=[
            "name", "dtype", "width", "direction", "connected_to"
        ])

        # Initialize tables dictionary before parsing
        self.tables = {
            "params": self.params,
            "ports": self.ports
        }

        self._parse_parameters()
        self._parse_ports()

    query = lambda self, q: pandasql.sqldf(q, self.tables)

    def print(self) -> None:
        print("Module: ", self.header)
        print("Parameters: \n", self.params)
        print("Ports: \n", self.ports)

    def _parse_parameters(self) -> None:
        """Parse parameters from the SystemVerilog module"""
        param_list = []
        
        if hasattr(self.raw_code.header, 'parameters'):
            param_list_node = self.raw_code.header.parameters
            
            if param_list_node.kind == pyslang.SyntaxKind.ParameterPortList:
                for param_decl in param_list_node:
                    if param_decl.kind == pyslang.SyntaxKind.SeparatedList:
                        # Split the declaration into individual parameter declarations
                        decl_str = str(param_decl).strip()
                        lines = decl_str.split('\n')
                        
                        for line in lines:
                            # Remove comments and clean up the line
                            line = line.split('//')[0].strip()
                            if not line:
                                continue
                                                        # Remove trailing comma if present
                            if line.endswith(','):
                                line = line[:-1].strip()
                            
                            try:
                                # Parse each parameter declaration
                                parts = line.split()
                                if parts[0] == 'parameter':
                                    param_name = parts[1]
                                    param_value = int(parts[3])  # Skip the '=' at parts[2]
                                    
                                    param = Param(
                                        name=param_name,
                                        dtype="int",
                                        scope="parameter",
                                        default_value=param_value,
                                        override_value=None,
                                        typed_param=False
                                    )
                                    param_list.append(param.series())
                            except Exception as e:
                                continue
        
        if param_list:
            self.params = pd.DataFrame(param_list)
            self.tables["params"] = self.params

    def _parse_ports(self) -> None:
        """Parse ports from the SystemVerilog module"""
        port_list = []
        
        for port in self.raw_code.header.ports.ports:
            if port.kind == pyslang.SyntaxKind.ImplicitAnsiPort:
                port_str = clean_port_string(str(port))
                parts = port_str.split()
                direction = parts[0]
                
                if '[' in port_str:
                    width = parts[2]
                    name = parts[3]
                    port_info = Port(
                        name=name,
                        dtype=parts[1],
                        width=width,
                        direction=direction
                    )
                else:
                    name = parts[2]
                    port_info = Port(
                        name=name,
                        dtype=parts[1],
                        direction=direction
                    )
                    
                port_list.append(port_info.series())
        
        if port_list:
            self.ports = pd.DataFrame(port_list)
            self.tables["ports"] = self.ports

