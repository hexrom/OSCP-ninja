#!/bin/bash
# Forward DNS Lookup from list of potential hostnames
for name in $(cat list.txt);do
	host $name.domain.com|grep "has address" |cut -d" " -f1,4