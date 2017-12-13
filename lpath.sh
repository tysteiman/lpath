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

WHICH_PATH=`which $BINARY`

# determine whether the command is actually in the
# user's path or not ... don't try anything else
# if not...
if [ $? -gt 0 ]; then
    echo command $BINARY is not in your path!
    exit
fi

# evaluate which command we'll use. the user can set
# the default lpath command or just use less by default.
if [ ! $LPATH_CMD ]; then
    LPATH_CMD=less
fi

# Launch!
$LPATH_CMD $WHICH_PATH
