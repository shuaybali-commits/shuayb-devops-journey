# Bandit Level 11 → 12

## Objective
Decode a ROT13-encoded password stored in `data.txt`.

## Key concept
ROT13 shifts letters by 13 places. The `tr` command can translate characters.

## Commands used
```bash
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
