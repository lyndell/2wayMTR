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
set -u # exit over uninitialised variables

IP1=lpic.Lyndell.NET
IP2=zike.Lyndell.NET

ssh lpic "mtr -i.2 -r -c100  $IP2"         # root user


