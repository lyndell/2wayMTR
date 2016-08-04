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

set -x # show code during execution
set +x # do NOT show code during execution
set -u # exit over uninitialised variables

IP1=lpic.Lyndell.NET
IP2=169.53.8.6

echo -e "\n\n"
echo -e "FROM: $IP1  to  $IP2 .  \n"

ssh $IP1 "mtr -i.2 -r -c10  $IP2"         # root user

echo -e "\n\n"
echo -e "FROM: $IP2  to  $IP1 .  \n"

ssh $IP2 "mtr -i.2 -r -c10  $IP1"         # root user

echo -e "\n\n"



