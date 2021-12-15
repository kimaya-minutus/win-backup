#!/bin/bash

#Required
domain=$1
commonname=$domain
COMM=openssl

#Add your company details
country=US
state=CO
organization="XD Innovation"
organizationalunit=IT
email=mchaudhari@xdinnovation.com


if [ -z "$domain" ]
then
    echo "Argument not present."
    echo "Useage $0 [common name]"

    exit 99
fi

#echo "Generating key request for $domain"


#Create the certificate signing request
echo "Creating KEY and CSR"
${COMM} req -out $domain.csr -new -newkey rsa:2048 -nodes -keyout $domain.key -subj"/C=${country}/ST=${state}/O=${organization}/OU=${organizationalunit}/CN=${commonname}/emailAddress=${email}"


#Create the certificate
echo "Creating CRT"
${COMM} x509 -req -in $domain.csr -signkey $domain.key -CAcreateserial -out $domain.crt -days 1000 
    
echo "-----Below is your CSR-----"
cat $domain.csr

echo "-----Below is your Key-----"
cat $domain.key

echo "-----Below is your CRT-----"
cat $domain.crt


