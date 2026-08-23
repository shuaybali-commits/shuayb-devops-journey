# Bash Scripting Basics

## Overview
Bash is a scripting language used to automate tasks in Linux environments.

---

## Shebang

- `#!/bin/bash` → tells the system which interpreter to use  

---

## Comments

- `#` → single-line comment  
- `: ' '` → multi-line comment  

---

## Variables

- Used to store data  
- Example:  
  - `name="Shuayb"`  
  - `echo $name`  

---

## Conditionals

### If / Else / Elif

- Used for decision making  

Example structure:

- if condition  
- then run command  
- elif another condition  
- else fallback  
- fi (end)

---

## Comparison Operators

- `-eq` → equal  
- `-ne` → not equal  
- `-lt` → less than  
- `-gt` → greater than  
- `-le` → less or equal  
- `-ge` → greater or equal  

Logical:
- `&&` → AND  
- `||` → OR  

String:
- `==` → equal  
- `!=` → not equal  

---

## Functions & Parameters

- Functions group reusable code  
- Parameters allow input into functions  

Example:
- function takes `$1` as first argument  

---

## Piping

- `|` → passes output from one command to another  
- Example: filter results from one command into another  

---

## Set Commands

- `set -e` → exit on error  
- `set -u` → error on undefined variables  
- `set -x` → debug (print commands)  
- `set -eux` → combine all  

---

## Loops

### For Loop

- Used to iterate over a list of values  

### While Loop

- Runs while a condition is true  

---

## Flow Control

- `break` → exit loop early  
- `continue` → skip current iteration  

---

## Error Handling & Exit Codes

- Every command returns an exit code  
- `0` → success  
- non-zero → error  

- `$?` → stores last command exit status  
