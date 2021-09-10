import os
from itertools import repeat

n=500
ip = "10.10.10.1"

for i in repeat(None, n):
    exit_code = os.system(f"ping -c 1 -w2 {ip} > /dev/null 2>&1")
    print(exit_code == 0)

