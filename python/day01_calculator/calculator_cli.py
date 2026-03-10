import argparse

def main():
    print("Welcome to the calculator!")
    parser = argparse.ArgumentParser(description="A simple calculator CLI")
    parser.add_argument("operation", choices=["add", "subtract", "multiply", "divide"], help="The operation to perform")
    parser.add_argument("num1", help="The first number", type=float)
    parser.add_argument("num2", help="The second number", type=float)

    args = parser.parse_args()

    if args.operation == "add":
        result = args.num1 + args.num2
    elif args.operation == "subtract":
        result = args.num1 - args.num2
    elif args.operation == "multiply":
        result = args.num1 * args.num2
    elif args.operation == "divide":
        result = args.num1 / args.num2

    print(f"The result of {args.operation}ing {args.num1} and {args.num2} is: {result}")
if __name__ == "__main__":
    main()