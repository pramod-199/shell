#!/bin/bash 

function install() {
        local pkg=${1}
        apt-get install ${1} -y
        if [[ $? != 0 ]]
        then 
        echo "package not installed please check ${1}"
        exit 1 
        fi         
}

function maventarget () {
    local mavencmd=${1}
    maven ${1}
    if [[ $? != 0 ]]
    then 
        echo "maven command ${1} not run please check"
        exit 1
    fi
}

if [[ $UID -ne 0 ]]
then 
    echo -e "\033[0;31muser is not root user\033[0m "
    exit 1 
else 
    echo -e "\033[0;32muser is root user\033[0m "
fi


apt-get update
if [[ $? -ne 0 ]]
then 
    echo -e "\033[0;31mupdate command not run.\033[0m"
    exit 1
else 
    echo -e "\033[0;32mupdate command run.\033[0m"
fi


git clone https://github.com/coolgourav147/spring-boot-war-example.git
if [[ $? != 0 ]]
then 
    echo -e "\033[0;31mgit repo not copied.\033[0m"
    exit 1
else 
        echo -e "\033[0;32mgit repo copied.\033[0m"
fi

# install maven 
# install tomcat9 
# maventarget test
# maventarget package