#!/bin/bash
echo " Enter Username"
read user
useradd $user >/dev/null 2>&1
if [ $? == 0 ]
then 
echo $user is added to System
else
echo $user already added to system
fi

