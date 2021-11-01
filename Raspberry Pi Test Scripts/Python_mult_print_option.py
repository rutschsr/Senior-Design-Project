# Infinite multiplying loop
from datetime import datetime
import time

i = 1
n=1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
starttime = datetime.now()
print("Start")
while i < n:
	i = i * 2
	print(i)
print("End")

finishtime = datetime.now()
print('Start time: ', str(starttime))
print('End time: ', str(finishtime))
print('Total time: ', str(finishtime - starttime))