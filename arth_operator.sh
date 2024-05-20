#!/bin/bash

a="5"
b="6"

echo "$((a+b))" #for arthematic use $(()) double bracket

echo "$((2**3))" #output 8  2*2*2=8

((a++))
echo $a  #output is 6 a=a+1 

((b+=3))
echo $b #output 9 b=b+3