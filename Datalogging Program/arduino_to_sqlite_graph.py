import serial #From pyserial package https://anaconda.org/anaconda/pyserial
import sqlite3 #From sqlite3 package https://anaconda.org/anaconda/sqlite3
from sqlite3 import Error
from datetime import datetime
#Plot Help: https://towardsdatascience.com/plotting-live-data-with-matplotlib-d871fac7500b
import matplotlib.pyplot as plt #package installed as part of Anaconda
import numpy as np
from matplotlib.animation import FuncAnimation
import psutil
import collections

#System Variables
arduino_port = "COM7" #serial port of Arduino, this probably needs changed, yes (this was linux, we will run on windows)
baud = 115200 #Needs to be the same as the arudino otherwise it will not work
fileName="current-data.csv" #name of the CSV file generated
dbName="data.db"
i=1

# Create empty variable for graphing
PowerGraph=collections.deque(np.zeros(100))


with plt.ion():
  fig=plt.figure(figsize=(12,6))
  #ax=plt.subplot(121)

#create sqlite database (raw file location from my test machine)
con = sqlite3.connect(r'C:\Users\NBSwi\Documents\GitHub\Senior-Design-Project\Sqlite\500test100PowerCount1.sqlite3')
cur = con.cursor()

#SQL query to be used: SELECT date,current FROM current WHERE date>= '2021-09-27 17:24:00'

# cur.execute('''CREATE TABLE current
#                (date text, current real)''')

try: #Add another column here for voltage: , voltage real
    cur.execute('''CREATE TABLE PowerMeasurement
               (date text, wattage real)''')
except Error as e:
    print(e)


con.commit
#create_connection(r"C:\Users\NBSwi\Documents\GitHub\RaceTime\Sqlite\datatest1.db")
ser = serial.Serial(arduino_port, baud)



print('Press "a" to start recording data')
textin=input()
if textin =='a':
        starttime=datetime.now()
        print('Data started recording at: ', str(starttime))
        while i==1:
            #read data: add functionality here to parse string for voltage
          Data=str(ser.readline())
          currenttime=datetime.now()
          Data=Data.replace("b'", "" )
          Data=Data.replace("\'","")
          Data=Data.replace("\'","")
          Data=Data.replace("\\","")
          Data=Data.replace("rn","")

            #write data to file database:
          print('DateTime: ',str(currenttime),'Serial: ', Data )
          DataValue = "INSERT INTO PowerMeasurement VALUES ('" + str(currenttime) +"', '"+ Data +"')"
          #Graphing Function:
          fig.plot(Data)
          plt.ion()

          cur.execute(DataValue)
          con.commit()
        con.close()



          



