class Student:
    def __init__(self, name, classes):
        self.name = name
        self.classes = classes

    def go_to_class(self):
        # class keyword reserved
        print(self.name + " goes to: ")
        for course in self.classes:
            print(course)


s1= Student("Alice", [
    "CS-1181", 
    "CS-3180"
])

s2= Student("Bob", [
    "CEG-2350", 
    "CEG-3320"
])

s1.go_to_class()
s2.go_to_class()