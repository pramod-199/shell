#!/bin/bash 
set -e                      #The set -e command at the beginning ensures that the script exits on any error.
. ./setup-project/variable.sh

function install() {
        local pkg=${1}
        if ! apt-get install ${1} -y
        then 
        echo "${RED}package not installed please check ${1}${NOCOLOR}"
        exit 1 
        fi         
}

function maventarget () {
    local mavencmd=${1}
   if ! mvn ${1}
    then 
        echo "${RED}maven command ${1} not run please check${NOCOLOR}"
        exit 1
    fi
}


if [[ $UID -ne 0 ]]
then 
    echo -e "${RED}user is not root user${NOCOLOR} "
    exit 1 
else 
    echo -e "${GREEN}user is root user${NOCOLOR} "
fi


if ! apt-get update 
then 
    echo -e "${RED}update command not run.${NOCOLOR}"
    exit 1
else 
    echo -e "${GREEN}update command run.${NOCOLOR}"
fi


##################################Varibles#######################################
read -p "please enter access path: "  app_context
app_context=${app_context:-app} #if user unable to provide value this will take app as default

install maven 
install tomcat9 
maventarget test
maventarget package


if cp -rvf target/hello-world-0.0.1-SNAPSHOT.war /var/lib/tomcat9/webapps/${app_context}.war
then   
    echo -e "\033[0;032mapplication Deployed successfully. you can access it on http://{ipadress:8080}/${app_context}\033[0m"
else 
        echo -e "\033[0;031mapplication not Deployed \033[0m"
fi


# git clone https://github.com/coolgourav147/spring-boot-war-example.git


exit 0
