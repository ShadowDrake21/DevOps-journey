#!/bin/bash
# checking if output file exists

OUTPUT_FILE=$1

if [[ ! -n $1 ]];
then
	echo "No parameter passed."
	exit 1
fi

if [ -f "$OUTPUT_FILE" ]; then
	echo "$OUTPUT_FILE exists."
else 
	echo "$FILE does not exist."
fi
