#!/bin/bash
######################
# Purpose: To learn string test
# Version: 1.0
# Owner  : info@tejoyasha.com
# Input  : None
# Output : Message on screen
######################

# Check if you are the root user or not

WHOAMI=`/usr/bin/whoami`

if [ $WHOAMI == "root" ]; then
  echo "You are the root user"
else
  echo "You are $WHOAMI user"
fi


