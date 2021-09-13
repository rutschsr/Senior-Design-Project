import os
from itertools import repeat
from datetime import datetime

n=500
ip = "10.10.10.1"

starttime=datetime.now()

for i in repeat(None, n):
    exit_code = os.system(f"ping -c 1 -w2 {ip} > /dev/null 2>&1")
    print(exit_code == 0)
finishtime=datetime.now()
print('Start time: ',str(starttime))
print('Finish Time is: ',str(finishtime))
totaltime=finishtime-starttime
print('Total Elapsed Time Was: ', str(totaltime))


