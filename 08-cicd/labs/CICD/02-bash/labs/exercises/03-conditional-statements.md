# Level 03 — Conditional Statements

## Goal
Check if a file called `hero.txt` exists inside the `Arena` directory.

## Script
#!/bin/bash

if [ -f "Arena/hero.txt" ]; then
    echo "Hero found!"
else
    echo "Hero missing!"
fi

