import os
import sys
import gzip
try:
    filename = sys.argv[1]
    arrname = sys.argv[2]
except:
    sys.exit("Example: bin2h goldhen.bin goldhen_gz")
gzname=filename+".gz"
hname=arrname+".h"
f = open(filename, 'rb')
bindat = f.read()
f.close()
f = gzip.open(gzname, 'wb')
f.write(bindat)
f.close()
cnt = 0
tmpdat = "static const uint8_t "+arrname+"[] PROGMEM = {\n    "
with open(gzname, 'rb') as f:
    chnk = f.read(1)
    while chnk:
        if cnt == 31:
            cnt = -1
            tmpdat = tmpdat + "%s,\n    " % ord(chnk)
        else:    
            tmpdat = tmpdat + "%s, " % ord(chnk)
        cnt=cnt+1
        chnk = f.read(1)
if tmpdat.endswith(","):
  tmpdat = tmpdat[:-1]
elif tmpdat.endswith(", "):
  tmpdat = tmpdat[:-2]
elif tmpdat.endswith(",\n"):
  tmpdat = tmpdat[:-2]
tmpdat = tmpdat + "};"
f.close()
print(tmpdat)
if os.path.exists(gzname):
  os.remove(gzname)