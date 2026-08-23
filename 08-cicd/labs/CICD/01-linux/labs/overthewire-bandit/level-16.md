# Bandit Level 16 → 17

## Objective
Find the correct SSL service port in a range and use it to obtain an SSH private key for `bandit17`.

## Key concept
Use `nmap` to find open ports, test SSL services with `openssl s_client`, and use the retrieved private key for SSH login.

## Commands used
```bash
nmap -p 31000-32000 localhost

cat /etc/bandit_pass/bandit16 | openssl s_client -connect localhost:<PORT> -quiet

# Save returned private key:
vim /tmp/b16/bandit17.key
chmod 600 /tmp/b16/bandit17.key

ssh -i /tmp/b16/bandit17.key bandit17@localhost -p 2220
cat /etc/bandit_pass/bandit17
