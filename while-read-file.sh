#!/bin/bash

cat /etc/passwd | while read line 
do 
echo "${line}"
sleep 0.3s

done 