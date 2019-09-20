#!/bin/bash

#shebang telling os to have bash run the script
# Author: Steven Im
# Script follows here:

echo "Enter a number: "
read numOne
# will ask for input
echo "Enter a second number: "
read numTwo
sum=$(($numOne + $numTwo))
echo "The sum is : $sum"
let prod=numOne*numTwo
echo "The product is: $prod"

# $1 is command line arg
echo "File Name: $0"
echo "Command Line Argument 1: $1"

grep $1 $2
