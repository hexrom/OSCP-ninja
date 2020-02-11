#!/bin/bash
# Simple Zone Transfer script
# $1 is first argument given after bash script
# check if argument was given, if not, print usage

if [ -z "$1" ]; then
	echo "[*] Simple Zone transfer script"
	echo "[*] Usage: $0 <domain name> " 
	exit 0
fi

# if argument is given, identify the DNS servers for the domain.
# for each of servers, attempt zone transfer

for server in $(host -t ns $1 |cut -d" " -f4);do
	host -l $1 $server |grep "has address"
done