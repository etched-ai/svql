# svql: SystemVerilog Module Analysis Tool

A Python tool for parsing and analyzing SystemVerilog modules using SQL queries.

## Overview

svql provides a simple interface to extract and query information from SystemVerilog modules. It parses module parameters, ports, and their connections, storing them in SQL-queryable DataFrames.

## Installation

Install the required dependencies with:

```bash
pip install -r requirements.txt
```

## Usage

Below are some examples demonstrating how to parse a SystemVerilog module, execute queries, and print the outputs.

### Example 1: Query Parameters Not Changed from Default

Module parameters typically come with default values. When a parameter has not been explicitly overridden, it retains its default value. Use the following query to extract those parameters:

```python
from module import Module

# Parse a SystemVerilog module
module = Module("path/to/your/module.sv")

print(f"All parameters that have not been changed from default for {module.header}:")
print(module.query("SELECT * FROM params WHERE override_value IS NULL"), "\n")

# Expected Output:
# All parameters that have not been changed from default for pipeline_top:
#            name dtype  default_value override_value      scope  typed_param
# 0    DATA_WIDTH   int             32           None  parameter            0
# 1   FILTER_TAPS   int              4           None  parameter            0
# 2  BUFFER_DEPTH   int              8           None  parameter            0
```

### Example 2: Query Input Ports

To retrieve all input ports of a module, filter the ports based on their direction:

```python
from module import Module

# Parse a SystemVerilog module
module = Module("path/to/your/module.sv")

print(f"Ports where direction = 'input' for {module.header}:")
print(module.query("SELECT * FROM ports WHERE direction = 'input'"), "\n")

# Expected Output:
# Ports where direction = 'input' for pipeline_top:
#       name  dtype direction             width connected_to
# 0       clk  logic     input                 1         None
# 1     rst_n  logic     input                 1         None
# 2   data_in  logic     input  [DATA_WIDTH-1:0]         None
# 3  valid_in  logic     input                 1         None
# 4   read_en  logic     input                 1         None
```
