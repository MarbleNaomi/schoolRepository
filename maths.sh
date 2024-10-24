#!/bin/bash

# operation variable set to a meaningless variable to initialise
operation="x"

# main loop to repeat if a wrong input is put in
while [ "$operation" != "0" ]; do
    echo "Enter operation (+, -, *, /, or type 0 to exit application):"
    read operation

    # break loop if input is "0"
    if [ "$operation" == "0" ]; then
        echo "Application closed"
        break
    fi

    echo "Enter the first number: "
    read number1
    echo "Enter the second number: "
    read number2

    if [ "$operation" == "+" ]; then #different operations to calculate the numbers
        number3=$(($number1 + $number2))
    elif [ "$operation" == "-" ]; then
        number3=$(($number1 - $number2))
    elif [ "$operation" == "*" ]; then
        number3=$(($number1 * $number2))
    elif [ "$operation" == "/" ]; then
        number3=$(($number1 / $number2))
    else
        echo "Invalid input"
        continue
    fi

    echo "Output: $number3"
done
