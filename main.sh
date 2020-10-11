#!/bin/bash


#############################################                          
#                                           #                                            
#  created by : Rahul Kumar                 #
#                                           #
#############################################


# This script is used for intial input for the terminal



while true
do 
read -p "[${HOSTNAME}]# " command
if [[ "${command}" = 'configure terminal' ]]
then
    bash config.sh
else
    case "${command}" in 
    
    "showip")
        bash showip.sh
        ;;
    "showhost")
        bash showhost.sh
        ;;
    "reboot")
        bash reboot.sh
        ;;
    "showntp")
        bash showntp.sh
        ;;
    *)
        echo "Invalid Command."
        ;;
    esac
fi
done