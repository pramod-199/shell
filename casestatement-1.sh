#!/bin/bash

# read -p "please enter Y or N: " action 

# case ${action} in  
#     [yY] | [Yy][Ee][Ss])    #we can do in both way like in casestatement.sh 
#         echo "you enter y"
#     ;;
#     [Nn] | [Nn][Oo])
#         echo "you entered n"
#     ;;
#     *) 
#         echo "please try again."

# esac

read -p "please enter Y or N: " action 

case ${action} in  
    [y]*)                                    #we can use this for anything u can enter if it start with y
        echo "you enter y"
    ;;
    [n]*)                                  #we can use this for anything u can enter if it start with n
        echo "you entered n"
    ;;
    *) 
        echo "please try again."

esac