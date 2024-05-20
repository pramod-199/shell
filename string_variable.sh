#!/bin/bash

string="my name is pramod"

echo "${string}" #my name is pramod

echo "${string^}" #My name is pramod to make first letter capital

echo "${string^^}"  #MY NAME IS PRAMOD to make everything capital

string1="My name is Pramod" #17 words with spaces

echo "${string1}" #My name is Pramod

echo "${string1,}" #my name is Pramod to make first letter small

echo "${string1,,}" #my name is pramod to make everything small

#to count lenght of string 


echo "the length of string is - ${#string1}"
