#!/bin/bash 
# Backup & Archive Utility
set -e
echo "=== BACKUP & ARCHIVE UTILITY ==="

BACKUP_DIR="$HOME/backups"
DATE=$(date +%F)

if [ $# -eq 0 ]; then
    echo "Error: No directory provided"
    echo "Usage: ./backup.sh <directory>"
    exit 1
fi
SOURCE_DIR=$1
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Directory does not exist"
    exit 1
fi

DIRECTORY_NAME=$(basename "$SOURCE_DIR")
BACKUP_FILE="${DIRECTORY_NAME}_${DATE}.tar.gz"

echo "Backup file: $BACKUP_FILE"
mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"
echo "Backup created successfully"
echo

echo "Archive: $BACKUP_DIR/$BACKUP_FILE"
echo "Source directory: $SOURCE_DIR"
echo "Backup directory: $BACKUP_DIR"
echo "Date: $DATE"
