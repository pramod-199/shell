#!/bin/bash 

num=11

if [[ ${num} -eq 10 ]]
then
echo "number is equals to 10"
else
if [[ ${num} -gt 10 ]]
then 
echo "number is greater than 10"
fi
fi

#nested means using condition within condition