#!/bin/bash

name="pramod"
readonly name #this is used for no one can change variable value now if u use same variable with diff value still it uses this value
echo "${name}"

#unset name this is used to unset value of any variable
name="vijay"

echo "${name}"