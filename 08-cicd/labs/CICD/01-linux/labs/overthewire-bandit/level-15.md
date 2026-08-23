# Bandit Level 15 → 16

## Objective
Send the current password to a TLS service on localhost port 30001 to receive the next password.

## Key concept
Use `openssl s_client` to interact with SSL/TLS services.

## Commands used
```bash
cat /etc/bandit_pass/bandit15 | openssl s_client -connect localhost:30001 -quiet
