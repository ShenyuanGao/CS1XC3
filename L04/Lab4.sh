#!/bin/bash

# Use First Argument As Working Directory

extra=""
count=1
if (("$#" > 3)); then
    for var in "${@:4}"
    do
        extra="$extra$var \n"
    done
fi

echo -e $extra > "excess.txt"

WDIR="$1"
cd "$WDIR"

FileName="file1.txt"

if [ -n "$3" ]; then
    FileName=$3
fi

if [ "$2" -eq 1 ] ; then
    if ! test -f "$FileName"; then
       echo "gaos74" > "$FileName"
    fi
elif [ "$2" -eq 2 ] ; then
    if test -f "$FileName"; then
       mkdir "backup"
       cp "$FileName" "backup"
    fi
elif [ "$2" -eq 3 ] ; then
    if test -f "backup/$FileName"; then
        cp "backup/$FileName" "."
        rm "backup/$FileName"
    fi
fi

echo "Finished"
