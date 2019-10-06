#!/bin/bash

mkdir -p recycle-bin;


if [ $# -eq 0 ]; then
	echo "Error: no target specified" 
	echo "Usage: .myrm <files>"

else mv $* recycle-bin
fi

for  number in "$@" 
do
	echo "Deleting $number"
done

