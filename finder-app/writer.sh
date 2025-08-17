#!/bin/bash

WRITE_FILE=$1
WRITE_STR=$2

if [[ -z "$WRITE_FILE" ||  -z "$WRITE_STR" ]]; then
    echo "Error: Missing parameters"
    echo "Usage: writer.sh <path to a file> <text string>"
    exit 1
fi

mkdir -p "$(dirname $WRITE_FILE)"
touch "$WRITE_FILE"
echo "$WRITE_STR" > "$WRITE_FILE"

if [[ $? -ne 0 ]]; then
    echo "Error: Could not create file $WRITE_FILE"
    exit 1
fi