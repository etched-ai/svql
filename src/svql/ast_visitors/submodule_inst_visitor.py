import pyslang
from utils import attr_utils

class SubmoduleInstanceVisitor:
    def __init__(self):
        self.submodule_instances = []

    def visit(self, node):
        if node.kind == pyslang.SyntaxKind.HierarchyInstantiation:
            attr_utils.print_attrs(node)
            # self.submodule_instances.append(node)
            # print("Submodule instance: ", node)
            print("--------------------------------")
