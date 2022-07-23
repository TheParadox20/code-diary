import socket
client = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
HOST='localhost'
PORT=5080
client.connect((HOST,PORT))
client.send("hey".encode('utf-8'))
print (client.recv(1024).decode('utf-8'))
while True:    
    text=input("Enter message: ")
    client.send(text.encode('utf-8'))
    print (client.recv(1024))