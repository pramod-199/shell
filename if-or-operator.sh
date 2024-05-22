#!/bin/bash


# os_type="$(uname)"

# if [[ ${os_type,} == "linux" || ${UID} -eq 0 ]]  # ||(or) operator this only run first if it is successfull it wont run other if first is unsuccefull then runs other
# then
# echo "user is root user and os is linux"
# fi

#please check other example to 

read -p "Do you want to continue (Y/y/yes)" value

if [[ ${value,,} == "y" || ${value,,} == "yes" ]]
then
echo -e  "\033[0;32myou want it."
else
echo -e "\033[0;31myou dont want it."

fi