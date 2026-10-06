def add(a, b):
    return a + b

def mult(a, b):
    return a * b

def perform_operation(fn, a, b):
    return fn(a, b)


result = perform_operation(
    lambda a, b: a - b,
    5, 3
)
print(result)


result = perform_operation(add, 3, 4)
print(result)

result = perform_operation(mult, 3, 4)
print(result)

