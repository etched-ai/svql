import structures.module as module
from structures.param import Param
import pandas as pd

# Example usage
module = module.Module("tests/rtl/pipeline_top.sv")

# Example usage with SQL queries
print(f"All parameters that have not been changed from default for {module.header}:")
print(module.query("SELECT * FROM params WHERE override_value IS NULL"), "\n")

print(f"Ports where direction = 'input' for {module.header}:")
print(module.query("SELECT * FROM ports WHERE direction = 'input'"), "\n")