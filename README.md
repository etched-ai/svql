# parsv: SystemVerilog Module Analysis Tool

A Python tool for parsing and analyzing SystemVerilog modules using SQL queries.

## Overview

parsv provides a simple interface to extract and query information from SystemVerilog modules. It parses module parameters, ports, and their connections, storing them in SQL-queryable DataFrames.

## Installation

Install the required dependencies with:

```bash
pip install -r requirements.txt
```

## Usage

Below are some examples demonstrating how to parse a SystemVerilog module and execute queries.

### Example 1: Query Parameters Not Changed from Default

Module parameters typically come with default values. When a parameter has not been explicitly overridden, it retains its default value. This scenario is useful for verifying a module's configuration and identifying parameters that might need updating. Use the following query to extract those parameters:

```python
from module import Module

# Parse a SystemVerilog module
module = Module("path/to/your/module.sv")

print(f"All parameters that have not been changed from default for {module.header}:")
print(module.query("SELECT * FROM params WHERE override_value IS NULL"), "\n")
```

### Example 2: Query Input Ports

To retrieve all input ports of a module, filter the ports based on their direction:

```python
from module import Module

# Parse a SystemVerilog module
module = Module("path/to/your/module.sv")

print(f"Ports where direction = 'input' for {module.header}:")
print(module.query("SELECT * FROM ports WHERE direction = 'input'"), "\n")
```
