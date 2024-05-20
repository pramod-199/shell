#!/bin/bash
pkg="nginx"

function install () {
   local pkg="tomcat"
    echo "installation2 $1 " 
    echo "${1}"
}

function configuration(){
    echo "configuration2 $1"

}


echo "name ${pkg}"
install "${pkg}"
configuration "${pkg}"