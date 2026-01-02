#!/bin/bash
# Writes a string to a file
# Parameters:
# writefile - file to write to
# writestr - string to write
# Exits with value 1 error if parameters not specified

if [ "$#" -ne 2 ]; then
    echo "Incorrect number of arguments. $# provided. 2 required"
    exit 1
fi

WRITE_FILE=$1
WRITE_STR=$2

# Create path to directory if it doesn't exist
WRITE_DIR=$( dirname "$WRITE_FILE" )
if [ ! -d "$WRITE_DIR" ]; then
    mkdir -p "$WRITE_DIR"
fi

echo "$WRITE_STR" > "$WRITE_FILE" 