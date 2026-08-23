# Bash Challenge 2: File Operations Script

## Description
A Bash script that automates basic directory and file creation.

## Requirements
- Create a directory called `bash_demo`
- Navigate into the directory
- Create a file called `demo.txt`
- Write text to the file (including the current date)
- Display the file contents

## Script
#!/usr/bin/env bash

mkdir bash_demo
echo "Directory 'bash_demo' created."

cd bash_demo || exit

echo "This file was created by a Bash script on $(date)" > demo.txt
echo "File 'demo.txt' created."

echo "File contents:"
cat demo.txt

