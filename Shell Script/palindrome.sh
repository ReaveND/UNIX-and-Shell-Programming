#!/bin/bash

# Function to reverse a number
reverse_number() {
    local num=$1
    local reverse=0

    while [ $num -gt 0 ]; do
        digit=$((num % 10))
        reverse=$((reverse * 10 + digit))
        num=$((num / 10))
    done

    echo "$reverse"
}

# Prompt the user to enter a number
echo "Enter a number:"

# Read the input number
read number

# Call function to reverse the number
reverse=$(reverse_number $number)

# Check if the number is palindrome
if [ $number -eq $reverse ]; then
    echo "$number is a palindrome."
else
    echo "$number is not a palindrome."
fi

