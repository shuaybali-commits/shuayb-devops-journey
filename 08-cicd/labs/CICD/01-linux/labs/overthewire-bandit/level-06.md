# Bandit Level 06 → 07

## Objective
Find the password in a file on the server that is owned by user `bandit7`, group `bandit6`, and is 33 bytes.

## Key concept
Use `find` with ownership + size filters, suppress permission errors with `2>/dev/null`.

## Commands used
```bash
find / -type f -user bandit7 -group bandit6 -size 33c 2>/dev/null
cat /
