#!/bin/bash

file_path="first.sh"
#below to check it is file or directory
if [[ -d ${file_path} ]]
then
echo "${file_path} is a dir"
fi 

if [[ -f ${file_path} ]]
then
echo "${file_path} is a file"
fi

#below to check it have read write excute permission

if [[ -r ${file_path} ]]
then
echo "${file_path} have read permission"
fi


if [[ -w ${file_path} ]]
then
echo "${file_path} have write permission"
fi

if [[ -r ${file_path} && -w ${file_path} && -x ${file_path} ]]   #to check all the permission
then
    echo "${file_path} has all permissions"
fi

