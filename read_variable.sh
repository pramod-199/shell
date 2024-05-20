#!/bin/bash

read -p "please enter your name:- " name  #read is used to take input from user with -p we can show what input name is variable which value is input
read -p "please enter your age:- " age 
read -p "please enter your password:-  " -s password  # -s is used to take input  in secure format 


echo #this echo is used to show output sepretly or else it will show i=as below


#without above echo
# please enter your name:- pramod
# please enter your age:- 26
# please enter your password:-  my name is pramod and my age is 26 my password is 123

#with above echo
# please enter your name:- pramod
# please enter your age:- 26
# please enter your password:-  
# my name is pramod and my age is 26 my password is 123


echo "my name is ${name} and my age is ${age} \
my password is ${password}"