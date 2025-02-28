from core.module import Module

# Example usage
module = Module("tests/rtl/pipeline_top.sv")


print(module.ports)
# Example usage with SQL queries
# print(f"All parameters that have not been changed from default for {module.name}:")
# print(module.query("SELECT * FROM params WHERE override_value IS NULL"), "\n")

# print(f"All disconnected ports for {module.name}:")
# print(module.query("SELECT * FROM ports WHERE connected_to IS NULL"), "\n")