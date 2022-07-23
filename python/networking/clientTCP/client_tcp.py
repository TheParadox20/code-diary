import socket
import sys

client = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
HOST = sys.argv[1]
PORT = int(sys.argv[2])
client.connect((HOST,PORT))


while True:
    command = input('Enter command: ')
    client.send(command.encode('utf-8'))
    if command == 'quit':
        message=command.encode('utf-8')
        client.send(message)
        break
    if command == 'test':
        message = "HELLO SERVER!!".encode('utf-8')
        client.send(message)
    command = command.split(' ')    
    if command[0] == 'get':        
        data=client.recv(1024)        
        writeFile = open(command[1],'w')
        writeFile.write(data.decode('utf-8'))
        writeFile.close()
        print("File ",command[1],"downloaded.")
    if command[0] == 'put':
        file=open(command[1],'r')
        content=file.read()
        checkSum=str(len(content))
        message=content.encode('utf-8')
        client.send(message)
        print("Awaiting server response.")
        #time.sleep(3)
        data=client.recv(1024)
        status= "File uploaded." if checkSum==data.decode('utf-8') else "Upload not complete sent checksum {} received checksum {}".format(checkSum,data.decode('utf-8'))
        print("Server response: ",status)
    if command[0] == 'keyword':
        print("Awaiting server response.")
        data=client.recv(1024)
        print("Server response: ",data.decode('utf-8'))

print("Exiting program!")