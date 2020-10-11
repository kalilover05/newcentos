#!/bin/bash

#############################################                          
#                                           #                                            
#  created by : Rahul Kumar                 #
#                                           #
#############################################

#This script is used to show the ntp status

ntp=`timedatectl`
echo "${ntp}"