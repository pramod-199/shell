#!/bin/bash

name="pramod"
: ${name:? please enter name}

echo "im here "

#in above statement if variable value is set it will print im here echo statement
#if variable value is not set then it will print ./if-variable-not-set.sh: line 4: name:  please enter name
#this can be used for while taking input from user 


: ${1:? please enter name} 

echo "im here ${1}

# ./if-variable-not-set.sh  pramod1 as this im here pramod1