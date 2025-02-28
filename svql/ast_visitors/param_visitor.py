import pyslang
from tables import param


class ParamVisitor:
    def __init__(self):
        self.params = []
        self.session = pyslang.ScriptSession()

    def visit(self, node):
        if node.kind == pyslang.SyntaxKind.ParameterDeclaration:     
            for declarator in node.declarators:
                self.params.append(param.ParamRow(
                    name=str(declarator.name).strip(),
                    dtype=str(node.type).strip() if str(node.type) != '' else None,
                    default_value=str(self.session.eval(str(declarator.initializer.expr))),
                    override_value=None,
                    scope=str(node.keyword).strip()
                ).series())
        elif node.kind == pyslang.SyntaxKind.TypeParameterDeclaration:
            print(f"Type {str(node.keyword).strip()}s not yet supported. (Identified: {str(node.declarators).strip()})")
