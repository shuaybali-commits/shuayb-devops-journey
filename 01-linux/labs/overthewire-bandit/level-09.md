# Bandit Level 09 → 10

## Objective
Find the password in `data.txt` in human-readable text near `===`.

## Key concept
Use `strings` to extract readable text from a binary-like file, then filter with `grep`.

## Commands used
```bash
strings data.txt | grep "==="
