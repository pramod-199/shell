#!/bin/bash 

function install() {
    local pkg=${1}
    if ! apt-get install ${1} -y
        then 
        echo "package not installed please check ${1}"
        exit 1 
    fi         
}

function maventarget () {
    local mavencmd=${1}
   if ! maven ${1}
    then 
        echo "maven command ${1} not run please check"
        exit 1
    fi
}

##################################Varibles#######################################
read -p "please enter access path: "  app_context
app_context=${app_context:-app} #if user unable to provide value this will take app as default

if [[ $UID -ne 0 ]]
then 
    echo -e "\033[0;31muser is not root user\033[0m "
    exit 1 
else 
    echo -e "\033[0;32muser is root user\033[0m "
fi


if ! apt-get update 
then 
    echo -e "\033[0;31mupdate command not run.\033[0m"
    exit 1
else 
    echo -e "\033[0;32mupdate command run.\033[0m"
fi


##################################Varibles#######################################
read -p "please enter access path: "  app_context
app_context=${app_context:-app} #if user unable to provide value this will take app as default

if cp -rvf target/hello-world-0.0.1-SNAPSHOT.war /var/lib/tomcat9/webapps/${app_context}.war
then   
    echo -e "\033[0;032mapplication Deployed successfully. you can access it on http://{ipadress:8080}/${app_context}\033[0m"
else 
        echo -e "\033[0;031mapplication not Deployed \033[0m"
fi


# git clone https://github.com/coolgourav147/spring-boot-war-example.git
# if [[ $? != 0 ]]
# then 
#     echo -e "\033[0;31mgit repo not copied.\033[0m"
#     exit 1
# else 
#         echo -e "\033[0;32mgit repo copied.\033[0m"
# fi

# install maven 
# install tomcat9 
# maventarget test
# maventarget package

exit 0
