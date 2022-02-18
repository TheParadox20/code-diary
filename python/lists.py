#mutable ordered containers
""" 
            Defining a list
<var> = [<item>,<item>,<item>,<item>]
        OR
<var> = list(<iterable>)
"""
names = ['abn','jos','fel','sam']
books = ('blood&treasure','dark rivers','snow white')
bookList = list(books)

"""
            Accessing elements
<list>[index]
if index is negative elements are accesed in reverse order i.e. -1 is last element
"""
print("second last name is",names[-2])

#appending to a list <list>.append(<object>)
names.append("par")
print(names)
#Adding all the elements of a list to another list <list> += <iterable> OR <list>.extends(<iterable>)
names+="ron"
print(names)
omega="sob"
names.extend(omega)
print(names)

#Inserting into a list <list>.insert(<index>,<object>) N/B the index argument becomes the index of the object
names.insert(3,"jor")
print(names)

#list concatenation <var> = <list1>+<list2>

#removing from a list, can be done in various ways
#   <list>.remove(<object>), only removes the first instance of an object if there are multiple occurences if object is not in list returns an error 
names.remove("o")
print(names)
#   <list>.pop() OR <list>.pop(<index>): the method returns the item/object that was removed

#   del keyword, del <list>[index] or del <list>[startIndex:endIndex]

# append() : Adds an element at the end of the list

# clear() : Removes all the elements from the list

# copy() : Returns a copy of the list

# count() : Returns the number of elements with the specified value

# extend() : Add the elements of a list (or any iterable), to the end of the current list

# index() : Returns the index of the first element with the specified value

# insert() : Adds an element at the specified position

# pop() : Removes the element at the specified position

# remove() : Removes the item with the specified value

# reverse() : Reverses the order of the list

# sort() : Sorts the list