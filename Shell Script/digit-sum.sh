#!/bin/bash

# Function to find sum of digits and count total number of digits
sum_and_count_digits() {
    local num=$1
    local sum=0
    local count=0

    while [ $num -gt 0 ]; do
        digit=$((num % 10))
        sum=$((sum + digit))
        num=$((num / 10))
        count=$((count + 1))
    done

    echo "Sum of digits: $sum"
    echo "Total number of digits: $count"
}

# Prompt the user to enter a number
echo "Enter a number:"

# Read the input number
read number

# Call function to calculate sum of digits and count total number of digits
sum_and_count_digits $number

