#!/bin/bash
######################
# Purpose: To learn logical test
# Version: 1.0
# Owner  : info@tejoyasha.com
# Input  : None
# Output : Message on screen
######################


MARKS=$1

if [ ! $MARKS ]; then
  echo "Usage: $0 <marks>"
  exit
fi

if [ $MARKS -gt 100 -o $MARKS -lt 1 ]; then
  echo "Please enter marks between 1 and 100"
  exit
fi


if [ $MARKS -ge 65 -a $MARKS -le 100 ]; then
  echo "Student Result: First Class"
elif [ $MARKS -ge 55 -a $MARKS -le 64 ]; then
  echo "Student Result: Second Class"
elif [ $MARKS -ge 45 -a $MARKS -le 54 ]; then
  echo "Student Result: Third Class"
else
  echo "Student Result: Failed !!!!"
fi

  
