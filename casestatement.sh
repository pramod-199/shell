#!/bin/bash

action="${1,,}"
ser="apache2"

case ${action} in 
    start)
        echo "apache2 starting"
     sudo service ${ser} ${1}
     ;;
    stop) 
     echo "apache2 stoping"
     sudo service ${ser} ${1}
     ;;

    reload) 
     echo "apache2 reloading"
     sudo service ${ser} ${1}
     ;;
    restart) 
     echo "apache2 restarting"
     sudo service ${ser} ${1}
     ;;
    status) 
     echo "apache2 status"
     sudo service ${ser} ${1}
     ;;
    *)
        echo "please provide valide command line argument (start/stop/reload/restart/status)"

esac


#other example
# action="${1,,}"

# case ${action} in  
#     foo)
#         echo "bar"
#     ;;
#     bar)
#         echo "foo"
#     ;;
#     *)
#         echo "try again"
#     ;;

# esac 


#!/bin/bash

# Function to handle different options
# handle_option() {
#     case "$1" in
#         "Foo")
#             echo "bar"
#             ;;
#         "Bar")
#             echo "foo"
#             ;;
#         *)
#             echo "Try again"
#             ;;
#     esac
# }

# # Main script logic
# main() {
#     # Check if an option is provided
#     if [ $# -eq 0 ]; then
#         echo "No option provided. Please provide an option."
#         exit 1
#     fi

#     # Call handle_option function with the provided option
#     handle_option "${1^}"
# }

# # Call the main function with the provided option
# main "$@"
