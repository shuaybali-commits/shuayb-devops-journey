# Bandit Level 19 → 20

## Objective
Use the provided setuid helper to run a command as `bandit20` and read the next password.

## Key concept
A setuid binary can run with the file owner’s privileges.

## Commands used
```bash
./bandit20-do id
./bandit20-do cat /etc/bandit_pass/bandit20
