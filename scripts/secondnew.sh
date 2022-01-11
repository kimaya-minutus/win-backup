
#!/bin/bash
echo "Enter your name"
read name
echo "Enter your Surname"
read surname
echo " Where you work"
read work
echo " where are you from"
read from

echo "candiatate name is $name $surname"  >> /root/Desktop/enquiry
echo " student works in $work company" >> /root/Desktop/enquiry
echo " student is from $from City" >> /root/Desktop/enquiry


