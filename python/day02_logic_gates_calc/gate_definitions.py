def XOR(a, b):
    return a + b - 2*a*b

def AND(a, b):
    return a*b

def OR(a, b):
    return a + b - a*b

def NOT(a):
    return 1 - a

def NAND(a, b):
    return 1 - a*b

def NOR(a, b):
    return 1 - (a + b - a*b)

def XNOR(a, b):
    return 1 - (a + b - 2*a*b)

