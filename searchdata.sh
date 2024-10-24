#!/bin/bash

echo "Enter file name and path: "
read file

# Checks if file exists and if not, exits.
if [ ! -f $file ]; then
    echo "File not found"
    exit 1
fi

echo "Enter text to search for: "
read text

grep -i $text $file
