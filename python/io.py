# Methods that facilitate I/O from terminal are standard
#<var> = input('<optional prompt>')
name = input('Enter your name: ')
#output to the stdOutput is done using the print method
print('your name is ',name)
print('whats your favourite food',end=' ') # to remaain on the same line
print(name)

#using .format

#using f-strings
print(f"or your favourite maeal {name}")

# reading command line arguments