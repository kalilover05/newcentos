#!/bin/bash

#############################################                          
#                                           #                                            
#  created by : Rahul Kumar                 #
#                                           #
#############################################

#This script will display the IP address, Gateway and the subnet

NETWORK="/etc/sysconfig/network-scripts/ifcfg-enp0s3"


ip=`grep IPADDR $NETWORK`
gateway=`grep GATEWAY $NETWORK`
subnet=`grep NETMASK $NETWORK`

if [[ "${?}" -ne 0 ]]
then
    echo "$ip"
    echo "$gateway"
    echo "$subnet"
else
    echo "dhcp enabled"
fi    