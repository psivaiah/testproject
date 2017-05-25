#!/bin/bash
######################
# Purpose: To learn file test under shell
# Version: 1.0
# Owner  : info@tejoyasha.com
# Input  : None
# Output : Message on screen
######################

# clear the screen
clear

# Check if the file /etc/passwd is available or not

if [ -f "/etc/passw" ]; then
  # execute this if condition is true
   echo "The file /etc/passw exists"
else
  # execute this if condition is true
   echo "The file /etc/passw does not exists"
fi

# dummy echo

echo " "

# Check if we have read permission on /etc/shadow file or not

if [ -r "/etc/shadow" ]; then
  # execute this if condition is true
  echo "Yes, you have the read permission on /etc/shadow file"
else
  # execute this if condition is false
  echo "No, you do not have read permission on /etc/shadow file"
fi


