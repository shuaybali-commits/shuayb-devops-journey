# Level 05 — Combining Basics

## Goal
Create multiple files, move one of them to an archive if it exists, and list directory contents.

## Script
#!/bin/bash

mkdir Battlefield
touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt

if [ -f "Battlefield/knight.txt" ]; then
    mkdir Archive
    mv Battlefield/knight.txt Archive/
    echo "knight.txt has been moved to Archive."
else
    echo "knight.txt not found."
fi

echo "Contents of Battlefield:"
ls Battlefield

echo "Contents of Archive:"
ls Archive

