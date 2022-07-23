import socket
server = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
HOST='localhost'
PORT=5080
server.bind((HOST,PORT))
server.listen(1)
print("Started listening on",HOST,":",PORT)
client,addr=server.accept()
print("Got a connection from",addr[0],":",addr[1])
while True:
    print("enterd loop")
    data=client.recv(1024).decode('utf-8')
    print("Received",data,"from the client")    
    print("Processing data")
    if data=="hey":
        client.send('Hello client'.encode('utf-8'))
    elif data=="q":
        client.send("Goodbye".encode('utf-8'))
        client.close()
        break
    else:
        client.send("Invalid data".encode('utf-8'))
        print("Processing done")