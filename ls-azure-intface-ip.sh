#!/bin/bash

# ver 0.0.1
#
# this fetches the IP addresses associated with interfaces from bot members of an HA pair deployed with the 
# F5 CFT to see which device the secondary IPs are associated with
#
# usage:
# ls-azure-intface-ip.sh <dns_name>



dns_name=$1

echo "${dns_name}-ext0"

az network nic list --query "[?name=='${dns_name}-ext0']" | grep -w privateIpAddress

echo "${dns_name}-ext1"

az network nic list --query "[?name=='${dns_name}-ext1']" | grep -w privateIpAddress
