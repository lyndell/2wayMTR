#!/bin/bash 
#
###########################################################################
#
# FILE:    2wayMTR.sh
# DESC:    automatically MTR between two servers 
# NOTE:    save SSH login details in ~/.ssh/config and configure
#          keys for automatica log-in.
#          
# NAME:    Lyndell Rottmann
# EMAIL:   web@Lyndell.US
# LICENSE: Copyright (c) 2016 Lyndell Rottmann
#
#
#

set +x # do NOT show code during execution
set -x # show code during execution
set -u # exit over uninitialised variables

source ./2wayMTR.cfg
TIME=`date +%s`
FILE="MTR_${IP1}-${IP2}.${TIME}.txt"

echo -e "\n\n"
echo -e "FROM: $IP1  to  $IP2 .  \n" >> $FILE

#FILE1="MTR_${IP1}-to-${IP2}.${TIME}.txt"
echo -e "`date` \n`date -u`"      >> $FILE
ssh $IP1 "mtr -i.2 -r -c10  $IP2" >> $FILE         # root user

echo -e "\n\n"                       >> $FILE
echo -e "FROM: $IP2  to  $IP1 .  \n" >> $FILE

#FILE2="MTR_${IP2}-to-${IP1}.${TIME}.txt"
echo -e "`date` \n`date -u`" >> $FILE
ssh $IP2 "mtr -i.2 -r -c10  $IP1" >> $FILE         # root user

echo -e "\n\n"

which open && open $FILE

