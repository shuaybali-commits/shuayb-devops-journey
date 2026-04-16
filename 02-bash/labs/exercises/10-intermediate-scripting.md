# Level 10 — Boss Battle 2

## Goal
Create files, display them by size, and move any file containing `Victory` into an archive folder.

## Script
#!/bin/bash

mkdir Arena_Boss
mkdir Victory_Archive

for i in {1..5}
do
    echo "This is file $i" > Arena_Boss/file$i.txt
done

ls -lh Arena_Boss

for file in Arena_Boss/*.txt
do
    if grep -q "Victory" "$file"; then
        mv "$file" Victory_Archive
    fi
done

