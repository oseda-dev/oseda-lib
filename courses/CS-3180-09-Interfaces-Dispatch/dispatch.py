class Person:
    def __init__(self, name, gpa):
        self.name = name
        self.gpa = gpa

    def go_to_class(self):
        print(self.name, " goes to class")


p: Person = Person("Bob", 3.9)
p.__dict__['new_value'] = "Hello"

print(p.__dict__)

print(f"New value was: {p.new_value}")