#!/bin/bash
# generate pem file for stunnel
openssl genrsa -out privatekey.pem 2048
openssl req -new -x509 -key privatekey.pem -out publickey.pem -days 10950
cat privatekey.pem publickey.pem >> files/stunnel.pem
