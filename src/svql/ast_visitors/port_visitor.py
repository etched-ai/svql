import pyslang
from svql.tables import port
from svql.utils import attr_utils

class PortVisitor:
    def __init__(self):
        self.ports = []

    def visit(self, node):
        if not hasattr(node, 'kind') or not hasattr(node, 'header'):
            return
            
        if node.kind == pyslang.SyntaxKind.ImplicitAnsiPort:
            dtype = None
            width = '[0:0]'
            
            if node.header.dataType.kind == pyslang.SyntaxKind.LogicType:
                dtype = str(node.header.dataType.keyword).strip()
                width = str(node.header.dataType.dimensions).strip() if str(node.header.dataType.dimensions) != '' else '[0:0]'
            elif node.header.dataType.kind == pyslang.SyntaxKind.ImplicitType:
                dtype = 'wire'
                width = str(node.header.dataType).strip() if str(node.header.dataType) != '' else '[0:0]'
            elif hasattr(node.header.dataType, 'keyword') and str(node.header.dataType.keyword).strip():
                dtype = str(node.header.dataType.keyword).strip()
                width = str(node.header.dataType.dimensions).strip() if str(node.header.dataType.dimensions) != '' else '[0:0]'
            else:
                dtype = str(node.header.dataType).strip() if str(node.header.dataType) != '' else None
                width = '[0:0]'
            
            self.ports.append(port.PortRow(
                name=str(node.declarator.name).strip(),
                dtype=dtype,
                width=width,
                direction=str(node.header.direction).strip(),
                connected_to=None,
                dimensions=str(node.declarator.dimensions).strip() if str(node.declarator.dimensions) != '' else '[0:0]'
            ).series())
        elif node.kind == pyslang.SyntaxKind.PortDeclaration:
            for declarator in node.declarators:
                if declarator.kind == pyslang.SyntaxKind.Declarator:
                    self.ports.append(port.PortRow(
                        name=str(declarator.name).strip(),
                        dtype='wire',
                        width=str(node.header.dataType.dimensions).strip() if str(node.header.dataType.dimensions) != '' else '[0:0]',
                        direction=str(node.header.direction).strip(),
                        connected_to=None,
                        dimensions=str(declarator.dimensions).strip() if str(declarator.dimensions) != '' else '[0:0]'
                    ).series())
