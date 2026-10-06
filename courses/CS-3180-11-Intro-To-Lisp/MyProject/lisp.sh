#!/bin/bash

# LISP execution script based on AUR package:
# https://github.com/xyproto/lisp


# Goal with this is to sort of eliminate the REPL feel for students
# irl lisp programs are almost never ran as a REPL

clear

LISP_INTERPRETER=sbcl

if ! command -v $LISP_INTERPRETER >/dev/null 2>&1; then
    echo "sbcl could not be found"
    echo "Please ensure it is installed before running"
    exit 1
fi


if [ -z $1 ]; then
    echo "Please provide a filename as the first argument"
    exit 1
fi

if [ ! -f $1 ]; then
    echo "Could not find the file named \"$1\""
    exit 1
fi

# force sbcl to run in interpretter mode 
# this is 100% slower, but more in line with traditional lisp

$LISP_INTERPRETER \
--noinform \
    --noprint \
    --no-userinit \
    --no-sysinit \
    --disable-debugger \
    --quit \
    --eval '(setf sb-ext:*evaluator-mode* :interpret)' \
    --load "$1" \
    --end-toplevel-options 
    # this is not in the help menu, but is documented at https://linux.die.net/man/1/sbcl