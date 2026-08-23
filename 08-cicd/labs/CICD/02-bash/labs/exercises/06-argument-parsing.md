# Level 06 — Argument Parsing

## Goal
Take a file as an argument and print the number of lines in that file.

## Script
#!/bin/bash

if [ -z "$1" ]; then
    echo "No file provided"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "File not found!"
    exit 1
fi

wc -l < "$1"

