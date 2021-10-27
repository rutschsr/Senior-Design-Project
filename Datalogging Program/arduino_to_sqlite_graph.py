import serial #From pyserial package https://anaconda.org/anaconda/pyserial
import sqlite3 #From sqlite3 package https://anaconda.org/anaconda/sqlite3
from sqlite3 import Error
from datetime import datetime
import numpy as np
import matplotlib.pyplot as plt
import collections
from drawnow import drawnow, figure

#System Variables
arduino_port = "COM5" #serial port of Arduino on local machine
baud = 115200 #Needs to match arduino
i=1
firstround=1
graphdata1=collections.deque(np.zeros(10))
timedata=collections.deque(np.zeros(10))

#create sqlite database (raw file location from my test machine)
con = sqlite3.connect(r'C:\Users\NBSwi\Documents\GitHub\Senior-Design-Project\Sqlite\graphtesting.sqlite3')
cur = con.cursor()


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

#plt.autoscale()
#plt.ion()
#plt.show(block=False)
def plotgraph(time,data):
  plt.plot(currenttime.timestamp(),graphdata)


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
          try:

            graphdata=float(Data)
            
            
          except ValueError as e:
            print(e)
            graphdata=0
           
          timedata.append(currenttime.timestamp())
          graphdata1.append(graphdata)
          drawnow(plotgraph(currenttime.timestamp(),graphdata))
          #plt.gca().relim
          #plt.gca().autoscale_view()
          #plt.show(block=False)
          
          # if firstround==1:
          #   plt.show(block=False)
          #   firstround=0
        

          cur.execute(DataValue)
          con.commit()
        con.close()



          




