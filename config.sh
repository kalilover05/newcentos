#!/bin/bash

#############################################                          
#                                           #                                            
#  created by : Rahul Kumar                 #
#                                           #
#############################################


#This script is used to change the terminal in config mode



while true
do
read -p "[${HOSTNAME}(config)]# " command

    if [[ ${command} = 'exit' ]]
        then 
             bash main.sh
    else

        case "${command}" in
        "changeip")
                bash changeip.sh
                ;;
        "changesubnet")
                bash changesubnet.sh
                ;;
        "changegateway")
                bash changesubnet.sh
                ;;
        "reboot")
                bash reboot.sh
                ;;
        "ntp synchronize")
                bash ntpsync.sh
                ;;
        "clear")
                bash clear.sh
                ;;
        *)
                echo "${command}: command not found..."
                ;;
        esac
fi
done
