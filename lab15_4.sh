#!/bin/bash

echo "Enter 1 or 2 to change the variable to yes or no"
read ans

#set up a return code
RC=0

if [ $ans -eq 1 ] 
   then
   export EVAR="Yes"

else 
   if [ $ans -eq 2 ] 
then
	export EVAR="NO"
else
	   export EVAR="How did you screw up 1 and 2?"
	   RC=1
    fi
fi
echo "The value of EVAR is: $EVAR"
exit $RC

