#!/bin/bash

factorial() {
    local n=$1
    local result=1

    for ((i=1; i<=n; i++)); do
        result=$((result * i))
    done
    echo "$result"
}
echo "Enter an integer to find its factorial:"
read number
if [ $number -lt 0 ]; then
    echo "Factorial is not defined for negative numbers."
    exit 1
fi
result=$(factorial $number)
echo "The factorial of $number is: $result"

