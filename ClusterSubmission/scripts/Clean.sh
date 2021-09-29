#!/bin/bash
# some initial output
echo "###############################################################################################"
echo "                    CLEAN JOB of batch JOB ${Name}"
echo "###############################################################################################"
while read -r line; do
    if [ -f "${line}" ];then
        echo "Remove ${line}"
        rm  ${line}
    elif [ -d "${line}" ];then
        echo "Remove directory ${line}"
        rm -rf ${line}
    fi
done < "${ToClean}"

echo "###############################################################################################"
echo "                    DONE"
echo "###############################################################################################"
