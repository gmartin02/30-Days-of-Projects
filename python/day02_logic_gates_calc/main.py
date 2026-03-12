from gate_definitions import AND, NAND, NOR, OR, XOR, XNOR, NOT
import argparse

def get_result(operation, val1, val2):
    if operation == "AND":
        return AND(val1, val2)
    
    if operation == "NAND":
        return NAND(val1, val2)
    
    if operation == "OR":
        return OR(val1, val2)
    
    if operation == "NOR":
        return NOR(val1, val2)
    
    if operation == "XOR":
        return XOR(val1, val2)
    
    if operation == "XNOR":
        return XNOR(val1, val2)
    
    if operation == "NOT":
        return NOT(val1)
    

def main():
    print("Welcome to the Boolean Logic Calculator!")
    
    parser = argparse.ArgumentParser(description="Boolean Logic Calculator")
    parser.add_argument("--operation", choices=["AND", "OR", "NAND", "NOR", "XNOR", "XOR", "NOT"], help="The Boolean operation to perform")
    parser.add_argument("--val1", help="First value", choices=[0, 1], type=int)
    parser.add_argument("--val2", help="Second value", choices=[0, 1],type=int)
    
    args = parser.parse_args()
    result = get_result(args.operation, args.val1, args.val2)

    print(f"For the {args.operation} gate and inputs {args.val1} and {args.val2} the output is {result}")

if __name__ == "__main__":
    main()