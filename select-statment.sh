#!/bin/bash

PS3="please select os: "

select os in mac windows linux 
    do 
        case ${os} in 
        mac)
            echo "you selected ${os}"
            echo "thanks"
            break
        ;;
        windows)
            echo "you selected ${os}"
            echo "thanks"
            break
        ;;
        linux)
            echo "you selected ${os}"
            echo "thanks"
            break
        ;;
        *)
            echo "Invalid  ${os}"
            
            
    esac
done