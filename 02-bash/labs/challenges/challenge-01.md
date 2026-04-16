# Bash Challenge 1: Basic Arithmetic Calculator

## Description
A simple Bash script that takes two numbers as input and performs basic arithmetic operations.

## Requirements
- Prompt the user for two numbers
- Perform addition, subtraction, multiplication, and division
- Display the results
- Handle division by zero

## Script
#!/usr/bin/env bash

addition() {
    local add=$(( $1 + $2 ))
    echo "$1 + $2 = $add"
}

subtraction() {
    local sub=$(( $1 - $2 ))
    echo "$1 - $2 = $sub"
}

multiplication() {
    local mul=$(( $1 * $2 ))
    echo "$1 * $2 = $mul"
}

division() {
    if [[ $2 -eq 0 ]]; then
        echo "Error: Division by zero is not allowed."
        return
    fi
    local div=$(( $1 / $2 ))
    echo "$1 / $2 = $div"
}

