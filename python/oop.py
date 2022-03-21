"""
            CLASS DEFINITIONS
class <NameOfClass>:
    __innit__
    attributes
    methods
"""


class Employee:
    'OPtional class documentation string that can be accesed through <ClassName>.__doc__  while class_suite consists of all component statements defining class memders'
    empCount = 0    # class variable

    def __init__(self,name,salary):
        self.name = name
        self.salary = salary
        Employee.empCount +=1

    def displayCOunt(self):
        print('Total Employee %d '%Employee.empCount)

    def displayEmployee(self):
        print()

emp1 = Employee('Zara',2000)
emp2 = Employee('Felicia',5000)

print(Employee.__doc__)
emp2.displayCOunt()
print(emp1.name)