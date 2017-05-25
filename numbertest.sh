#!/bin/bash
######################
# Purpose: To learn number test
# Version: 1.0
# Owner  : info@tejoyasha.com
# Input  : None
# Output : Message on screen
######################


MARKS=$1


if [ $MARKS -ge 65 ]; then
  echo "Student Result: First Class"
elif [ $MARKS -ge 55 ]; then
  echo "Student Result: Second Class"
elif [ $MARKS -ge 45 ]; then
  echo "Student Result: Third Class"
else
  echo "Student Result: Failed !!!!"
fi

  
