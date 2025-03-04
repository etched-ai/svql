import pyslang
from svql.tables import port
from svql.utils import attr_utils

class PortVisitor:
    def __init__(self):
        self.ports = []

    def visit(self, node):
        if node.kind == pyslang.SyntaxKind.ImplicitAnsiPort:
            self.ports.append(port.PortRow(
                name=str(node.declarator.name).strip(),
                dtype=str(node.header.dataType.keyword).strip() if str(node.header.dataType) != '' else None,
                width=str(node.header.dataType.dimensions).strip() if str(node.header.dataType.dimensions) != '' else '[0:0]',
                direction=str(node.header.direction).strip(),
                connected_to=None
            ).series())
        elif node.kind == pyslang.SyntaxKind.PortDeclaration:
            for declarator in node.declarators:
                if declarator.kind == pyslang.SyntaxKind.Declarator:
                    self.ports.append(port.PortRow(
                        name=str(declarator.name).strip(),
                        dtype='wire',
                        width=str(node.header.dataType.dimensions).strip() if str(node.header.dataType.dimensions) != '' else '[0:0]',
                        direction=str(node.header.direction).strip(),
                        connected_to=None
                    ).series())
