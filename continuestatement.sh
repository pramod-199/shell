#!/bin/bash


num=1

while [[ ${num} -le 10 ]]
do 
    
    if [[ ${num} -eq 5 ]]
    then 
     continue
    fi
    echo "${num}"
    ((num++))
done


