#!/bin/bash

# Function to check if a number is prime
is_prime() {
    local num=$1
    local isPrime=1

    if [ $num -eq 1 ]; then
        isPrime=0
    fi

    for ((i=2; i*i<=num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            isPrime=0
            break
        fi
    done

    echo $isPrime
}

# Prompt the user to enter a number
echo "Enter a number:"

# Read the input number
read number

# Call function to check if the number is prime
result=$(is_prime $number)

if [ $result -eq 1 ]; then
    echo "$number is a prime number."
else
    echo "$number is not a prime number."
fi

