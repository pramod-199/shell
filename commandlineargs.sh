#!/bin/bash  

name=${1}
age=${2}

echo -e "\033[0;32m my name is ${name} and my age is ${age}"

# command {./commandlineargs.sh pramod 26}
#output { my name is pramod and my age is 26}

#this used to give iput at run time

#if you want to give full name {./commandlineargs.sh "pramod muktawar" 26}
#output { my name is pramod muktawar and my age is 26}

echo $# #to check how many arguments you have passed

echo $@ #to check what argument you have while running script
echo $* #to check what argument you have while running script

