#!/bin/bash

set -e
# Define color codes
green='\033[0;32m'
red='\033[0;31m'
nocolor='\033[0m'

file="/home/aarna"

if [[ -e ${file} ]]
then
    if [[ -z $(ls -A "${file}") ]]
    then
        echo -e "${green}folder is empty${nocolor}"
    else
        echo -e "${red}file is  not empty${nocolor}"
    fi
else
    echo -e "${red}folder doesn't exist on server${nocolor}"
fi