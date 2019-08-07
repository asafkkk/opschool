#!/bin/bash
#add fix to exercise6-fix here
BOX=$(hostname)
if [ "$BOX" = server1 ]; then
sudo scp -v "$1" vagrant@server2:\ "$2" > log.txt 2>&1
else
sudo scp -v "$1" vagrant@server1:\ "$2" > log.txt 2>&1
fi
awk 'NR == 48 { print $3 }' log.txt

