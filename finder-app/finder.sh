#!/bin/bash

FILES_DIR=$1
SEARCH_STR=$2

if [[ -z "$FILES_DIR" || -z "$SEARCH_STR" ]]; then
    echo "Error: Missing parameters"
    echo "Usage: finder.sh <path to a directory> <text search string>"
    exit 1
fi

if [[ ! -d "$FILES_DIR" ]]; then
    echo "Error: $FILES_DIR is not a valid directory or it does not exist"
    exit 1
fi

FILE_COUNT=$(find "$FILES_DIR" -type f | wc -l)
SEARCH_COUNT=$(grep -rF "$SEARCH_STR" "$FILES_DIR" | wc -l)

echo "The number of files are $FILE_COUNT and the number of matching lines are $SEARCH_COUNT"
