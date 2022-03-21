import tkinter as tk

root = tk.Tk() #creating an instance of the tk.Tk class thtat creates the application window

#       Displaying a label
message = tk.Label(root,text='Hello GUI!')
message.pack()


root.mainloop() #keeps the window open, placed at the end