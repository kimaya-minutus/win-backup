#!/bin/bash

 echo "Enter path"
 read path
 if [ -f $path ]
 then 
 echo "its file"
 elif [ -d $path ]
 then 
 echo "its dir"
 else
 echo "wrong path"
 fi

