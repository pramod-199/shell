#!/bin/bash

os_type="$(uname)"

if [[ ${os_type,} == "linux" && ${UID} -eq 0 ]]
then
echo "user is root user and os is linux"
fi