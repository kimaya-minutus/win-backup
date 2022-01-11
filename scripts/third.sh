#!/bin/bash
echo "Enter First Number"
read a
echo "Enter second Number"
read b
#a=20
#b=30
c=$[$a+$b]
echo "Addition of above number $a + $b=$c" 
c=$(($a-$b))
echo "subtraction of above number is $a - $b=$d"
c=$(($a*$b))
echo "Multiplication of above number is $a * $b=$c"
c=$[$a/$b]
echo "Division of above number is $a/$b=$h" 

