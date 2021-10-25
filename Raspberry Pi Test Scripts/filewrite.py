import sys
n=1000

with open('output.txt', 'w+') as f:
    for i in n:
       print('r\n', file=f)
