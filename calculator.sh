#!/bin/bash

# Function to perform addition
add() {
    echo "$(($1 + $2))"
}

# Function to perform subtraction
subtract() {
    echo "$(($1 - $2))"
}

# Function to perform multiplication
multiply() {
    echo "$(($1 * $2))"
}

# Function to perform division
divide() {
    if [ "$2" -eq 0 ]; then
        echo "Error! Division by zero."
    else
        echo "$(($1 / $2))"
    fi
}

# Main function
main() {
    echo "Select operation:"
    echo "1. Add"
    echo "2. Subtract"
    echo "3. Multiply"
    echo "4. Divide"

    while true; do
        read -p "Enter choice (1/2/3/4): " choice

        if [[ "$choice" =~ ^[1-4]$ ]]; then
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2

            case $choice in
                1)
                    result=$(add "$num1" "$num2")
                    echo "$num1 + $num2 = $result"
                    ;;
                2)
                    result=$(subtract "$num1" "$num2")
                    echo "$num1 - $num2 = $result"
                    ;;
