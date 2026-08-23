# Bash Challenge 3: File Checker with Permissions

## Description
A Bash script that checks whether a file exists and displays its permissions.

## Requirements
- Prompt user for a filename
- Check if the file exists
- If it exists, check if it is readable, writable, and executable
- Display the appropriate messages

## Script
#!/usr/bin/env bash

read -p "Enter filename to check: " filename

if [ -e "$filename" ]; then
    echo "File '$filename' exists."

    if [ -r "$filename" ]; then
        echo "File is readable."
    else
        echo "File is not readable."
    fi

    if [ -w "$filename" ]; then
        echo "File is writable."
    else
        echo "File is not writable."
    fi

    if [ -x "$filename" ]; then
        echo "File is executable."
    else
        echo "File is not executable."
    fi
else
    echo "File '$filename' does not exist."
fi

