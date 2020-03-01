#!/bin/bash

export OLD_QHOME="$QHOME"
export QHOME="${CONDA_PREFIX}/q"

if [ `uname` == Linux ]; then
    OSL='l'
fi
if [ `uname` == Darwin ]; then
    OSL='m'
fi

export OLD_QEXE="$QEXE"
export QEXE="${QHOME}/${OSL}64/q"
