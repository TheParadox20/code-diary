import wx

app= wx.App()

frame = wx.Frame(parent=None, title='Hello GUI')

text = wx.StaticText(parent=frame,label=' Hello wx GUI library')

frame.Show()

app.MainLoop()