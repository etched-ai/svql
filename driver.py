import module
from param import Param
import pandas as pd

module = module.Module("tests/rtl/pipeline_top.sv")

print(module.query("SELECT * FROM params"))