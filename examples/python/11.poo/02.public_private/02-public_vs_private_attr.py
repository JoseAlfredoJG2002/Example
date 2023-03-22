import sys

class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def greet(self):
        print "Hello! I am " + self.name

    def __str__(self):
        return "Name: " + self.name + ", Age: " + str(self.age)

p = Person('Tomas', 44)
print p.name # Attributes are public by default
print p.age  # Attributes are public by default
