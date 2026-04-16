# Bash Challenge 4: Backup Script for Text Files

## Description
A Bash script that backs up all `.txt` files from a source directory into a timestamped backup directory.

## Requirements
- Prompt user for source directory
- Create a backup directory with a timestamp
- Copy all `.txt` files to the backup directory
- Display how many files were backed up

## Script
#!/usr/bin/env bash

read -p "Enter source directory: " source_dir

backup_dir="backup_$(date)"

mkdir "$backup_dir"
echo "Backup directory created: $backup_dir"

cp "$source_dir"/*.txt "$backup_dir"

count=$(ls "$backup_dir"/*.txt | wc -l)

echo "Backup complete!"
echo "Files backed up: $count"

