# Bandit Level 08 → 09

## Objective
Find the password which is the only unique line in `data.txt`.

## Key concept
Use `sort` and `uniq` to detect unique entries.

## Commands used
```bash
sort data.txt | uniq -u
