#!/bin/sh


for file in "$@"
do
	NAME="$( cat /dev/urandom | tr -cd 'a-f0-9' | head -c 12 )"
	FILENAME=$(basename "$file")
	EXTENSION="${FILENAME##*.}"
	NAME="${NAME}.${EXTENSION}"
	mv "$file" $NAME
done

