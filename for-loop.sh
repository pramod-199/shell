#!/bin/bash

# for variable in item  item1 item2 item3
# do 
#     echo "${variable}"
# done

#another example 

# read -p "please enter number: " number

# for num in {1..10}
# do 
#     echo "$((num*number))"
# done

#another example 

# for var in "pramod" "muktawar" "ajay dhakad" "prasad"
# do 
#     echo ${var}
# done

#another example

for var in $(ls -l *.txt)
do  
echo "${var}"
done

ls -l *.txt | while IFS= read -r var; do
    echo "$var"
done
