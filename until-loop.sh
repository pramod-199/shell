#!/bin/bash

read -p "please enter number: " number 
num="1"

until [[ ${num} -eq 11 ]] 
do
    echo $((num*number))
    ((num++))
done

#exactly opposite of while loop condition