#!/bin/bash

calculate_grade() {
    local average=$1
    local grade=""
    if (( $(echo "$average >= 90" | bc -l) )); then
        grade="A"
    elif (( $(echo "$average >= 80" | bc -l) )); then
        grade="B"
    elif (( $(echo "$average >= 70" | bc -l) )); then
        grade="C"
    elif (( $(echo "$average >= 60" | bc -l) )); then
        grade="D"
    else
        grade="F"
    fi
    echo "$grade"
}
echo "Enter marks for four subjects (separated by space):"
read mark1 mark2 mark3 mark4
sum=$((mark1 + mark2 + mark3 + mark4))
average=$(echo "scale=2; $sum / 4" | bc)
grade=$(calculate_grade $average)
echo "Sum of marks: $sum"
echo "Average marks: $average"
echo "Grade: $grade"

