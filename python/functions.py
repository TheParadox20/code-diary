"""
    def <functionName> (<parameters>):
        <code>
        return <var>
"""
#Returning multiple values
def names():
    print("returns multiple names")
    return "bro","cuzo","siz","me"
fBorn,x,sBorn,lBorn = names()
print("last born is",lBorn)

#arguments - positional, keyword, default, and variable-lenght
def id(name,age,surname="buda"):
    print(name,"@",age)

id(age=20,name="sam",surname="blabla") #keyword

def rollCall(*names):
    print(names)

rollCall()
rollCall("names()","sam","para")
#Single and multiline docstring



#The pass statement -> lazy function
def doNothing():
    pass

#Lambda functions ->lambda argument_list:expression
ans = lambda x,y,z : x+y+z
print(ans(2,2,2))

#In built functions

"""
    type(<var>) -> returns variable type
"""

print(type(int("7"))==int)