# Bandit Level 12 → 13

## Objective
Extract the password from a hexdump file that contains multiple layers of compression.

## Key concept
Reverse a hexdump to binary, then repeatedly identify and extract compressed files.

## Commands used
```bash
mkdir -p /tmp/b12
cd /tmp/b12
cp ~/data.txt .
xxd -r data.txt > data.bin

# Repeatedly:
file *
# then gzip -d / bzip2 -d / tar -xf based on output

cat data8
