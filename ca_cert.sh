
#!/bin/bash

#. ./ca_variable.cnf
# echo $country 
# echo $state
# echo $organization 
# echo $organizationalunit
# echo $email
domain=$1
commonname=$domain

#Add your company details
country=US
state=CO
organization="XD Innovation"
organizationalunit=IT
email=mchaudhari@xdinnovation.com
COMM=openssl

if [ -z "$domain" ]
then
    echo "Argument not present."
    echo "Useage $0 [common name]"

    exit 99
fi

echo "Generating key request and csr for $domain"

#Generate a key and csr
${COMM} req -out $domain.csr -new -newkey rsa:2048 -nodes -keyout $domain.key \ -subj "/C=${country}/ST=${state}/O=${organization}/OU=${organizationalunit}/CN=${commonname}/emailAddress=${email}"


#Create the certificate
echo "Creating CRT"
${COMM} x509 -req -in $domain.csr -CA  -CAkey  $domain.key -CAcreateserial -out $domain.crt -days 1000
    
echo "---------------------------"
echo "-----Below is your CSR-----"
echo "---------------------------"
echo
cat $domain.csr

echo
echo "---------------------------"
echo "-----Below is your Key-----"
echo "---------------------------"
echo
cat $domain.key

echo "---------------------------"
echo "-----Below is your CRT-----"
echo "---------------------------"
echo
cat $domain.crt


