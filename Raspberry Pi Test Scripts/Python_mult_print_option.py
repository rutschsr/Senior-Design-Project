# Infinite multiplying loop
from datetime import datetime
import time

#i = 1
i=1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
n=0
starttime = datetime.now()
print("Start")
while i>1:
	i=i/2
	print(i)
	n=n+1
print("End")

finishtime = datetime.now()
print('Start time: ', str(starttime))
print('End time: ', str(finishtime))
print('Total time: ', str(finishtime - starttime))
print(str(n))