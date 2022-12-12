
import subprocess
from sys import stderr, stdout

test = subprocess.Popen('ls -hal'.split(),stderr=subprocess.PIPE, stdout=subprocess.PIPE)
out, err = test.communicate()
# print(out)
out = out.decode('utf-8')
out = out.split('\n')
print(out[1])
for index in range(1,len(out),1):
    line = out[index].split()
    print(f"{line[5]} {line[6]} {line[7]}")