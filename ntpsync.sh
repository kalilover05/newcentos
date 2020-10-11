#!/bin/bash


#############################################                          
#                                           #                                            
#  created by : Rahul Kumar                 #
#                                           #
#############################################

#This script is used for ntp sync
echo -e "Listing Timezones \n"
timezone=`timedatectl list-timezones`
echo "${timezone}"

read -p ": " zone

`timedatectl set-timezone ${zone}`

`timedatectl set-ntp yes`