#!/bin/bash

num=abggg

if [[ ${num} -eq 10 ]]
then
echo "number is equals to 10"
elif [[ ${num} -gt 10 ]]
then 
echo "number is greater than 10"
elif [[ ${num} -lt 10 ]]
then
echo "number is less than 10"
else
  echo "please check your numbuer:- ${num} "
fi
