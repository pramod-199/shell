#!/bin/bash
num=1

while [[ ${num} -le 3 ]]
do 
  for i in item1 item2 item3
   do 
        echo "${num} - ${i}"
        if [[ $i -eq 2 ]]
         then 
             break 2
         fi
    done
     ((num++))   
done



