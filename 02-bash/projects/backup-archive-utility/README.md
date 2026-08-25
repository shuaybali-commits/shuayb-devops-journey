# Backup & Archive Utility

## Overview

A Bash script that automates the creation of compressed backups using `tar`.

The script validates user input, verifies that the target directory exists and stores timestamped `.tar.gz` archives in a central backup location.

---

## Features

- Validates user input
- Verifies the source directory exists
- Creates compressed `.tar.gz` archives
- Generates timestamped backup files
- Stores backups in a dedicated location

---

## Commands Practised

- `tar`
- `mkdir`
- `basename`
- `date`

---

## Skills Demonstrated

- Bash scripting
- Variables and parameters
- Input validation using conditional statements
- Command substitution (`$(...)`)
- Error handling with `set -e`
- File compression and archiving
- Basic automation
