from datetime import datetime
import time

n = 10000

starttime = datetime.now()
i = 0
while i < n:
    print(i)
    time.sleep(0.018)
    
    i = i+1
    

finishtime = datetime.now()
print('Start time: ', str(starttime))
print('End time: ', str(finishtime))
print('Total time: ', str(finishtime - starttime))
