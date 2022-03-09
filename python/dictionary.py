#A dictionary is an unorderd ,mutable, and indexed set of associations between a key and value
"""
            Creating A Dictionary
<var> = {<key>=<value>,<key>=<value>,<key>=<value>,<key>=<value>}
    OR
Using the dict() constructor function to create a dictionary object from an iterable or a sequence of key:value pairs
1. -> dict(**kvarg)
<var> =  dict(<key>=<value>,<key>=<value>,<key>=<value>)
2. -> dict(mapping,**kvarg)
3. -> dict(<iterable>,**kvargs)

"""
cities = {
    'wales':'cardiff',
    'England':'London',
    'Scotland':'Einburgh',
    'Northern Ireland':'Belfast',
    'Ireland':'Dublin'
}
print(cities)

#dict(**kvarg)
Landmarks = dict(egypt='Pyramid',kenya='14 falls',)
print(Landmarks)

#dict(<iterable>,**kvargs)
dict1 = dict([('uk','london'),('ireland',"dublin")]) #list of tuples
print(dict1)
dict2 = dict((['Ireland','Dublin'],['Northern Ireland','Belfast']))
print(dict2)

"""
                Working With Dictionaries
"""
#Accesing items via keys -> using <dict>[<key>] or <dict>.get(<key>)
print('Wonder of the world',Landmarks['egypt'])
print('England city',cities['England'])

#Adding new Entry
cities['France']='Paris'
print(cities)

#Changing a key's value
cities['wales']= 'Swansea'

#Removing an entry
