#!/bin/bash

#Nicholas Mueller Networking info dump script

#This script should be run in it's own directory it will create a file called netinfodump followed by the date and time. 

#The script will append interface configuration info, listening port data, and dns data with the dig command to a file.  

touch "netinfodump $(date)"  #This line of the script creates the file to which data is appended along with the current date and time.

ifconfig  >> "netinfodump $(date)" #First ifconfig is run its output is appended to the file previously created.

ss -l >> "netinfodump $(date)" #The ss command is like netstat it lists listening port status with the added -l option.

dig google.com >> "netinfodump $(date)" #Dig is run on google.com dig is a dns tool it provides the server address and dns info for google.com
