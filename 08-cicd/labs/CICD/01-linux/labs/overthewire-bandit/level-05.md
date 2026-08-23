# Bandit Level 05 → 06

## Objective
Find the password in `inhere/` in a file that is human-readable, 1033 bytes, and not executable.

## Key concept
Use `find` filters to locate files by size and permissions.

## Commands used
```bash
cd inhere
find . -type f -size 1033c ! -executable
cat ./
