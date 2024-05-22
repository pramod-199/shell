#!/bin/bash 

read -p "please enter number" number 
initnum="1"
while [[ ${initnum} -le 10 ]]; do
    echo $((initnum*number))
    ((initnum++))
done



