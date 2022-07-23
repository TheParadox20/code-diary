import socket
def anonymyzer(searchStr,path):
    print("Started anonymizer")
    fileName=path.split('.')
    fileName=fileName[0]+"_anon.txt"
    file=open(path,'r+')
    mainStr=file.read()
    tragetSymbol='X'
    targetStr=tragetSymbol
    i=0
    while i != len(searchStr)-1:
        targetStr=targetStr+tragetSymbol
        i+=1
    while mainStr.find(searchStr,0,len(mainStr)) > 0:
        m=mainStr[0:mainStr.find(searchStr,0,len(mainStr))]
        n=mainStr[(mainStr.find(searchStr,8,len(mainStr))+len(searchStr)):]
        mainStr=m+targetStr+n
    writeFile = open(fileName,'w')
    writeFile.write(mainStr)
    writeFile.close()
    return "File {} anonymized. Output file is {}".format(path,fileName)

server = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
HOST='localhost'
PORT=5080
server.bind((HOST,PORT))
server.listen(1)
server,addr=server.accept()
print("Got a connection from",addr[0],":",addr[1])
while True:
    print("Waiting for command")
    data=server.recv(1024)
    data=data.decode('utf-8')
    print (data)
    command = data.split(' ')
    if command[0]=='quit':
        break
    if command[0] == 'put':
        print("detected put command")
        check=server.recv(1024)
        checkSum=str(len(check.decode('utf-8')))
        writeFile = open(command[1],'w')
        writeFile.write(check.decode('utf-8'))
        writeFile.close()
        messageCheck = checkSum.encode('utf-8')
        server.send(messageCheck)        
        
    if command[0] == 'get':
        print('Sending file')
        file=open(command[1],'r+')
        fileData=file.read()
        sentData=fileData.encode('utf-8')
        server.send(sentData)

    if command[0] == 'keyword':
        print("Detected keyword command")
        message=anonymyzer(command[1],command[2]).encode('utf-8')
        server.send(message)