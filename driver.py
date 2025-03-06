import sys
import os
import pyslang

# Add the src directory to Python path
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), 'src')))

from svql import Module

# Example usage
# module = Module("/project/sohu/shreyas/etched4/tools/gls/mcpu_ss_top.v")

# module = Module("/project/sohu/shreyas/etched4/tools/gls/datalink.v")
# module = Module("tests/rtl/mini_datalink.v")

# # module = Module("/project/sohu/netlists/ipu/synth_old/orig/ipu.v")
module = Module("/project/sohu/shreyas/etched4/tools/gls/isc.v", top="CDN_flop")

# module = Module("tests/rtl/test.v")

print(module.name)
print("-" * 100)

print(module.ports)
print("-" * 100)

# Example usage with SQL queries
# print(f"All parameters that have not been changed from default for {module.name}:")
# print(module.query("SELECT * FROM params WHERE override_value IS NULL"), "\n")

# print(f"All disconnected ports for {module.name}:")
# print(module.query("SELECT * FROM ports WHERE connected_to IS NULL"), "\n")
