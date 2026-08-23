# Bandit Level 01 → 02

## Objective
Read the password from a file named `-` in the home directory.

## Key concept
A filename starting with `-` can be treated like a command option, so you must reference it safely.

## Commands used
```bash
ls
cat ./-
