#!/bin/bash

#user define variables 

name="pramod"
age="26"

echo "my name is ${name} and my age is ${age}"

study="program"
var="ing"

echo -e "\033[0;31mmy nam is ${name} and im ${study}ing"

echo -e "\033[0;32mmy nam is ${name} and im ${study}${var}"

#we can use in both way it is called concad