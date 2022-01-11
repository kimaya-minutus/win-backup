#!/bin/bash

echo " Enter Username "
read ur

echo " Enter Password"
read pass

#echo " Enter UID "
#read uid

if [[ ( $ur == "admin" && $pass == "secret" ) ]]; 
	# && $uid == "1001"  for third condition.
then
	echo "Valid User"
else
	echo "Invalid User"

fi 
