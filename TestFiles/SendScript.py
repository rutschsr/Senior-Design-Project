import sys
import os
import subprocess
import random
import operator
import csv
import logging
import tempfile

def run_command(command):
    print('----------------------------------------')
    print('Executing: '+command)
    pipe = subprocess.Popen(command, shell=True, bufsize=1, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, universal_newlines=True)
    #pipe.stdout.close()
    out, err = pipe.communicate()
    print (out)
    


print ("Number of arguments: %d" %  len(sys.argv))
print ("Argument List: %s" % str(sys.argv))

files_to_compile = ['stop_light_nice']
directories = ['']
file_to_compile = 'stop_light_nice'


if len(sys.argv) == 2:

    TrialCmd = 'sshpass -p "raspberry" scp 44mb.rtf pi@10.10.10.3:'
else:
	TrialCmd = sys.argv[2]

numTrials = int(sys.argv[1])

i=0

while i < numTrials:
    run_command(TrialCmd)
    print(i)
    i=i+1


