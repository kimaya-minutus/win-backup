clear
date
mkdir /root/Desktop/lockdown
tail /etc/passwd > /root/Desktop/lockdown/output
head /etc/passwd >> /root/Desktop/lockdown/output
wc /root/Desktop/lockdown/output
useradd user1
echo "redhat" | passwd --stdin user1
getent passwd user1
id user1


