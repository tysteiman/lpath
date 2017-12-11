#!/bin/bash

# Import LPATH settings from ~/.lpath if file exists
if [ -f ~/.lpath ]; then
    source ~/.lpath
fi

if [ ! $1 ]; then
    echo You must supply a file in your path to view!
    exit
else
    BINARY=$1
fi

# evaluate which command we'll use. the user can set
# the default lpath command or just use less by default.
if [ ! $LPATH_CMD ]; then
    LPATH_CMD=less
fi

# Launch!
$LPATH_CMD `which $BINARY`
