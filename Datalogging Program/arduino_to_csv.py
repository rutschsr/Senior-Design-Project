import serial #From pyserial package https://anaconda.org/anaconda/pyserial
import sqlite3 #From sqlite3 package https://anaconda.org/anaconda/sqlite3
from sqlite3 import Error
from datetime import datetime

#System Variables
arduino_port = "COM5" #serial port of Arduino, this probably needs changed, yes (this was linux, we will run on windows)
baud = 115200 #Needs to be the same as the arudino otherwise it will not work
fileName="current-data.csv" #name of the CSV file generated
dbName="data.db"
i=1


#create sqlite database (raw file location from my test machine)
con = sqlite3.connect(r'C:\Users\NBSwi\Documents\GitHub\Senior-Design-Project\Sqlite\datatest4.sqlite')
cur = con.cursor()

try:
    cur.execute('''CREATE TABLE current
               (date text, current real)''')
except Error as e:
    print(e)


con.commit
#create_connection(r"C:\Users\NBSwi\Documents\GitHub\RaceTime\Sqlite\datatest1.db")
ser = serial.Serial(arduino_port, baud)



print('Press "a" to start recording data')
textin=input()
if textin =='a':
        print
        starttime=datetime.now()
        print('Data started recording at: ', str(starttime))
        while i==1:
            #read data
          Data=str(ser.readline())
          currenttime=datetime.now()
          Data=Data.replace("b'", "" )
          Data=Data.replace("\'","")
          Data=Data.replace("\'","")
          Data=Data.replace("\\","")
          Data=Data.replace("rn","")

            #write data to file database:
          print('DateTime: ',str(currenttime),'Serial: ', Data )
          DataValue = "INSERT INTO current VALUES ('" + str(currenttime) +"', '"+ Data +"')"

          cur.execute(DataValue)
          con.commit()
        con.close()



          




#file = open(fileName, "a")

#display the data to the terminal
# getData=str(ser.readline())
# data=getData[0:][:-2]
# print(data)

#add the data to the file
#file = open(fileName, "a") #append the data to the file
#file.write(data + "\\n") #write data with a newline

#close out the file
#file.close()
#add line
