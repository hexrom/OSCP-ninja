#!/bin/bash
# Reverse DNS Lookup to resolve domain names from IP range
for ip in $(seq 72 91);do
	host 38.100.95.$ip |grep "domain" |cut -d" " -f1,5
done