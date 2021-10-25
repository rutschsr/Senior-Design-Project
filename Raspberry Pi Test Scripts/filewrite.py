import sys
n=1000000

with open('output.txt', 'w+') as f:
    for i in range(0,n):
       print('r\n', file=f)
