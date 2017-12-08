#!/bin/bash

if [ ! $1 ]; then
    echo You must supply a file in your path to view!
    exit
else
    BINARY=$1
fi

less `which $BINARY`
