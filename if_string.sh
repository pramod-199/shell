#!/bin/bash

name="pramod"
o_name="pramod"

if [[ -n ${name} ]]
then 
 echo "length of the string is non zero "
fi 

if [[ -z ${name} ]]
then 
 echo "length of the string is zero "
fi 

if [[ ${o_name} == ${name} ]]
then 
 echo "Both strings are equal"
fi 


if [[ ${o_name} != ${name} ]]
then 
 echo "Both strings are not equal"
fi 