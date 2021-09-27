import serial

arduino_port = "/dev/cu.usbmodem14201" #serial port of Arduino, this probably needs changed
baud = 9600 #arduino uno runs at 9600 baud
fileName="current-data.csv" #name of the CSV file generated

ser = serial.Serial(arduino_port, baud)
file = open(fileName, "a")

#display the data to the terminal
getData=str(ser.readline())
data=getData[0:][:-2]
print(data)

#add the data to the file
file = open(fileName, "a") #append the data to the file
file.write(data + "\\n") #write data with a newline

#close out the file
file.close()
