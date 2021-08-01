#!/bin/bash
#cleanup
rm size.txt output.log


args=("$@")
num=$#
for ((i=0;i<$#-1;i++)); do
        script -q -c "scp ${args[${i}]} server2:${@: -1}" >> output.log
done

while read p; do a= $( echo "$p" | awk '{ print $8 }'>> size.txt) ; done < output.log

SUM=0;
for i in `cat size.txt`; do SUM=$(($SUM + $i)); done; echo $SUM