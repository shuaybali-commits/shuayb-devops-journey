# Level 07 — File Sorting

## Goal
List all `.txt` files in the `Arena` directory and sort them by size.

## Script
#!/bin/bash

DIRECTORY="Arena"

if [ ! -d "$DIRECTORY" ]; then
    echo "Directory does not exist."
    exit 1
fi

ls -lh Arena/*.txt

