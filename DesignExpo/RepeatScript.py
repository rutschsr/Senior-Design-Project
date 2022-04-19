import sys
import os
import subprocess
import random
import operator
import csv
import logging
import tempfile
import time

def run_command(command):
    print('----------------------------------------')
    print('Executing: '+command)
    pipe = subprocess.Popen(command, shell=True, bufsize=1, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, universal_newlines=True)
    #pipe.stdout.close()
    out, err = pipe.communicate()
    print (out)
    


print ("Number of arguments: %d" %  len(sys.argv))
print ("Argument List: %s" % str(sys.argv))






#numTrials = int(sys.argv[1])

i=0


TrialCMD1 = 'sshpass -p "rutschsr" scp 44mb.rtf sam@10.10.10.4:'

while True:

    
    while i<50:
        exit_code = os.system("ping -c 1 -w2 srutschilling.net")
        print(exit_code)
        i=i+1


    time.sleep(500)
        
    i=0
    while i<20:
        run_command(TrialCMD1)
        i=i+1
    i=0
    
    




