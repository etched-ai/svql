import sys
import os
import argparse
import pyslang

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), 'src')))

from svql import Module

def main():
    parser = argparse.ArgumentParser(description='SVQL - SystemVerilog Query Language tool')
    parser.add_argument('input_file', help='Input Verilog/SystemVerilog file')
    parser.add_argument('--top', '-t', help='Top module name (defaults to filename)')
    parser.add_argument('--flatten', '-f', action='store_true', 
                        help='Generate flattened module stub')
    parser.add_argument('--output', '-o', help='Output file (defaults to <input>_flattened.v for --flatten)')
    
    args = parser.parse_args()
    
    if not os.path.exists(args.input_file):
        print(f"Error: Input file '{args.input_file}' not found.")
        sys.exit(1)
    
    try:
        module = Module(args.input_file, top=args.top)
        
        if args.flatten:
            flattened_stub = module.get_flattened_stub()
            
            if args.output:
                output_file = args.output
            else:
                base_name = os.path.splitext(args.input_file)[0]
                output_file = f"{base_name}_flattened.v"
            
            with open(output_file, 'w') as f:
                f.write(flattened_stub)
            
            print(f"Flattened module stub written to: {output_file}")
            print(f"Module: {module.name}")
            print(f"Total ports in original: {len(module.ports)}")
            
        else:
            print(f"Module: {module.name}")
            print("-" * 100)
            print("Parameters:")
            print(module.params)
            print("-" * 100)
            print("Ports:")
            print(module.ports)
            print("-" * 100)
            
            print(f"All parameters that have not been changed from default for {module.name}:")
            print(module.query("SELECT * FROM params WHERE override_value IS NULL"), "\n")
            
            print(f"All disconnected ports for {module.name}:")
            print(module.query("SELECT * FROM ports WHERE connected_to IS NULL"), "\n")
            
    except Exception as e:
        print(f"Error processing file: {e}")
        sys.exit(1)

if __name__ == "__main__":
    main()
