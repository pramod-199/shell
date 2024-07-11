#!/bin/bash

set -e
# Define color codes
green='\033[0;32m'
red='\033[0;31m'
nocolor='\033[0m'

dire="/var/www/html/aquigen"

# if [[ -w "${dire}" ]]
# then
#     echo -e "${green}${dire} has write permission ${nocolor}"
# else
#     echo -e "${red}${dire} dont have write permission ${nocolor}"
# fi


if [ -z "$(ls -A ${dire})" ]; then
    echo -e  "${green}${dire} is empty${nocolor}"
else
    echo "${red}${dire} is not empty${nocolor}"
fi



if [ -s "${file}" ]; then
    echo -e "${red}The file ${file} is not empty${nocolor}"
else
    echo -e "${green}The file ${file} is empty${nocolor}"
fi




