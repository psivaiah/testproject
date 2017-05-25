#!/bin/bash
######################
# Purpose: To learn shell script
# Version: 1.0
# Owner  : info@tejoyasha.com
# Input  : None
# Output : Message on screen
######################

# Get user name and set default password
MYUSER=$1
MYPASS="redhat"

# Check the user name is given or not
if [ ! $MYUSER ]; then
  echo "Usage: $0 <username>"
  exit
fi

# Check if I am a super user or not

WHOAMI=`/usr/bin/whoami`

if [ $WHOAMI != "root" ]; then
  echo "You MUST be a root user"
  exit
fi

# Check the user is already exists or not

/usr/bin/id $MYUSER

if [ $? -eq 0 ]; then
  echo "The user $MYUSER already exists"
  exit
fi


# Create the user

/usr/sbin/useradd  $MYUSER

if [ $? -ne 0 ]; then
  echo " We have some trouble to add user $MYUSER"
  exit
fi

# Set user default password

echo "$MYPASS" | /usr/bin/passwd --stdin "$MYUSER"

if [ $? -ne 0 ]; then
  echo " We have some trouble to set $MYUSER password"
  exit
fi

# Giving admin privileges

/usr/sbin/usermod -a -G wheel $MYUSER

if [ $? -ne 0 ]; then
  echo " We have some trouble to add $MYUSER to sudo group"
  exit
fi



echo "Successfully create user $MYUSER !!!!"






