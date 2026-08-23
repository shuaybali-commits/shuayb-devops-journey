# Bandit Level 18 → 19

## Objective
Retrieve the password even though the account logs out immediately on login.

## Key concept
Run a command directly over SSH without starting an interactive shell.

## Commands used
```bash
ssh bandit18@bandit.labs.overthewire.org -p 2220 "cat readme"
