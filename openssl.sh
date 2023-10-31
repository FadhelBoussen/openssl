#!/bin/bash

#let's check the extension of the file before proceeding to the encryption

var= pwd

#remote-server="ipaddress"

read -p "enter the file you want to encyprt or decrypt : " file

read -p "specify the output file " outfile


echo $infile


echo $outfile


extension=${file##*.}


if [ "$extension" != "enc" ]; then


openssl enc -aes-256-cbc -salt -in $file -out $outfile


# scp $outfile username@remote_server:/path/to/destination/

else


openssl enc -d -aes-256-cbc -in $file -out $outfile


fi

