# Bandit Level 13 → 14

## Objective
Use the provided private SSH key to log in as `bandit14` and retrieve the next password.

## Key concept
SSH key authentication with `ssh -i`, and correct key permissions with `chmod 600`.

## Commands used
```bash
chmod 600 sshkey.private
ssh -i sshkey.private bandit14@localhost -p 2220
cat /etc/bandit_pass/bandit14
