#immutable data collection i.e. not possible to add or remove elements once created
"""    
            Defining tuples 
<var> = (<item>,<item>,<item>,<item>)
        OR
Using the tuple() function to create a new tuple from an iterable
<var> = tuple(iterable)

N/B tuples contain other tuples and containers
"""
tupl = (1,3,"y",7)
print(tupl)
name = "paradox"
t = tuple(name)
print(t)

""" 
            Accesing tuple elements 
<var>[index]
"""
print("First character in name is",t[0])

""" 
            Slicing tuples
<var>[startIndex:endIndex]
returns a new tuple consisting of elements from startIndex to endIndex-1
N/B the original tuple is not affected
"""

""" 
            reversing a tuple
<var>[::-1]
"""
print("Name in reverse",t[::-1])

""" Tuple Related Functions """
#length of tuple len(<tuple>)
len(t)

#count how many times a specific value appears <tuple>.count(<var>)
print("a appears in name {} times".format(t.count("a")))

#find out the first index of a value in a Tuple <tuple>.index(<var>)
print("r is at index",t.index("r"))

#checking if a value exists in a tuple
if "o" in t: #using the in operator
    print("o exists")