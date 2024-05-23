#!/bin/bash

num=1

while [[ ${num} -le 10 ]]
do 
    echo "${num}"
    if [[ ${num} == 5 ]]
    then 
    echo "the condition is true loop is going to break."
    break;
    fi
    ((num++))
done

#ouput 
#1
# 2
# 3
# 4
# 5
# the condition is true loop is going to break.

#break stament breaks the statment when condition matches