#!/bin/bash

read -p "please enter your name " name

name=${name:- world}

echo "Hello ${name^}"  #output Hello Pramod when we give value like this ./default_variable.sh  please enter your name pramod

#what if we dont give any value 
# please enter your name #didn't give any value 
# Hello  world  take world from default

