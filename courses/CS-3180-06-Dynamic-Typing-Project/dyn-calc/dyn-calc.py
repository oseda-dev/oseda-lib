import pprint

def read_lines() -> list[str]:
    with open("input.txt", "r") as f:
        lines = f.readlines()
    
    # introduct list comprehension
    lines: list[str] = [line.strip() for line in lines]
    
    return lines

data_table = {}


def dynamic_add(a, b):
    global data_table
    # + operator determines its usage at runtime
    # same for * (only if we have time)
    
    
    val_a = data_table[a]
    val_b = data_table[b]

    try:
        result = val_a + val_b
    except TypeError:
        result = f"{val_a}{val_b}"

    return result    



def process_line(line: str) -> None:
    # think about each case
    # variable will either be assigned
    # : a literal
    # : expression 
    # simplifying assumptions: 
    # expression can be be variable, not a mix of variables and literals
    # each line can ONLY declare a new variable
    # we are only support add (for the sake of time)
    # only support strings and integers
    # values must be defined before use (interpretted)

    global data_table

    parts = line.split(":")
    print(parts)
    variable = parts[0]
    data = parts[1]

    if is_expression(data):
        # expression
        expression_parts = data.split(" ")
        first_var = expression_parts[0]
        operator = expression_parts[1] # ignored for now
        sec_var = expression_parts[2]

        data_table[variable] = dynamic_add(first_var, sec_var)

    else:
        # literal
        try:
            value_to_add = int(data)
            data_table[variable] = value_to_add
        except ValueError:
            value_to_add = data.strip("\'")
            data_table[variable] = value_to_add




# you would liekly want something much more rich here
def is_expression(test: str):
    return '+' in test

def main():
    lines = read_lines()
    for line in lines:
        process_line(line)

    pprint.pprint(data_table)
    # print(lines)



if __name__ == "__main__":
    main()



# read files as lines
# discuss how with blocks do NOT create a scope
# preprocess 
# process line
# get each piece
# we need a way to figure out if peice if a literal
# or an expression

# lets just process literals for now
# assume ints -> then parse as strings
