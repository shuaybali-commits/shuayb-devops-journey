# Bandit Level 14 → 15

## Objective
Send the current password to a local service running on port 30000 to retrieve the next password.

## Key concept
Use `nc` (netcat) to send data to a TCP service.

## Commands used
```bash
cat /etc/bandit_pass/bandit14 | nc localhost 30000
