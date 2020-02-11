# InfoGathering/Recon

### **Passive**

Google
`site:"domain.com" -site:"www.domain.com"` #search for subdomains, exclude main

### **Active**

_DNS enumeration_  
`host www.domain.com` #check ip of domain web server

#foward.sh, forward DNS lookup script  
#reverse.sh reverse DNS lookup script

_Zone Transfer_  
`host -t ns domain.com` #show name servers  
`host -l domain.com ns1.domain.com.` #try the different name servers for leakage
#zone-transfer.sh, simple zone transfer script

_Host Discovery / Port Scanning_ .   
`nmap -sn TargetIPRange -oG ping-sweep` #ICMP Sweep  
	`$ grep Up ping-sweep |cut -d" " -f2` #Clean results with grep  
`nmap -p139,445 TargetIPRange --open` #Quick check for open SMB servers on IP range  

`rpcclient -U "" TargetIP` #SMB Null Session, Windows 2003/XP SP2+ this disabled by default. Good against Windows 2000.  
`enum4linux -v TargetIP`   
`nbtscan IPRange` #NetBios Enumeration

### **Active Intrusive**  
_Vulnerability scanning_  
`nmap -v -p 80 --script all TargetIP` #NSE scan  
`openvas-setup` #OpenVas Scanner setup script, note down created password, runs on local 9392, user:admin
