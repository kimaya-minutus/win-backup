#!/bin/bash

for i in {101..110}

 do 

 ping -c3 192.168.0.$i > /dev/null 2>&1

 if [ $? = 0 ]
then 
 echo system$i.example.com is UP
else
 echo system$i.example.com is Down
fi
done
