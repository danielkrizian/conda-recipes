#!/bin/bash

if [ `uname` == Linux ]; then
    OSL='l'
fi
if [ `uname` == Darwin ]; then
    OSL='m'
fi

unzip -qq -o $QZIP/${OSL}64.zip
echo .z.k|QLIC=$QLICSRC QHOME=./ numactl --physcpubind=0 ${OSL}64/q -q
