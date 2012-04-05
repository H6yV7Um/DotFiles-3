#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: bk.sh DIRNAME"
    exit 1
fi

tar -cjf $1_$(date +'%Y%m%d_%H%M').tar.bz2 $1/
