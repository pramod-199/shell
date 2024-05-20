#!/bin/bash

string="abcpramodabcxyz"

echo "${string}" #output abcpramodabcxyz
echo "${string:1}" #output bcpramodabcxyz
echo "${string:4}" #ramodabcxyz
echo "${string:0:3}" #output abc it counted from 0 to 3 and printed
echo "${string:3:3}" #output pra
echo "${string: -5}" #output bcxyz
echo "${string: -1}" #output z

echo "${string#a*c}" #output pramodabcxyz it deleted a to c from first a to first c #shortest
echo "${string##a*c}" #output xyz it deleted a to c from first a to last c #longest


echo "${string%b*z}" #output abcpramoda it delete from last z to last first b #shortest
echo "${string%%b*z}" #output a it delete from last z to last  b #longest


echo "${string/abc/xyz}" #ouput xyzpramodabcxyz only replaced first abc to xyz
echo "${string//abc/xyz}"  #ouput xyzpramodxyzxyz replaces all  abc to xyz

echo "${string/abc}" #output pramodabcxyz only removes first abc
echo "${string//abc}" #output pramodxyz removes all abc from string




