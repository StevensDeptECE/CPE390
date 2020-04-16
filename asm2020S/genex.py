import fileinput
import re

wordnum = 1
for line in fileinput.input():
    line,repcount = re.subn("$fn", "f" + wordnum, line.rstrip())
    if repcount >= 1:
        wordnum = wordnum + 1    
    #line = re.sub('$hw', '');
    print(line)


                  
