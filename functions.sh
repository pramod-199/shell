#!/bin/bash

function install () {
    echo -e "\033[0;32m${FUNCNAME} start" # arguments are accessible through $1, $2,...
    echo "installation2 $1 ${2^}" 
    echo -e "\033[0;32m${FUNCNAME} END" 
}

configuration(){
    echo -e "\033[0;32m${FUNCNAME} start"
    echo "configuration2 $1"
    echo -e "\033[0;32m${FUNCNAME} end"

}

function deploy {
    echo -e "\033[0;32m${FUNCNAME} start"
    echo "deployment2"
    echo -e "\033[0;32m${FUNCNAME} end"
}

install "nginx" "webserver"
configuration "aarna"
deploy

#these three methods to use function but clean and neat writing use any one in whole script