import pyslang
from tables import port


class PortVisitor:
    def __init__(self):
        self.ports = []

    def visit(self, node):
        if node.kind == pyslang.SyntaxKind.ImplicitAnsiPort:
            self.ports.append(port.PortRow(
                name=str(node.declarator.name).strip(),
                dtype=str(node.header.dataType.keyword).strip() if str(node.header.dataType) != '' else None,
                width=str(node.header.dataType.dimensions).strip() if str(node.header.dataType.dimensions) != '' else '1',
                direction=str(node.header.direction).strip(),
                connected_to=None
            ).series())
