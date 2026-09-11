

def evil_fn():
    return "rm -rf /"

def main():
    to_eval = input("Give me something to evaluate: ")
    result = eval(to_eval)
    print(result)

if __name__ == "__main__":
    main()