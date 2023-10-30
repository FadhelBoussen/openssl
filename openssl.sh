#!/bin/bash

#let's check the extension of the file before proceeding to the encryption

read -p "enter the file you want to encyprt : " file

extension=${file##*.}

if [ "$extension" = "enc" ]

then echo "this is enc"

elif [ "$extension" = !"enc" ]

then

echo "this is not enc"

fi

#specify the file you want to encrypt

read -p "specify the file you want to encrypt " infile

echo $infile

read -p "specify the output file " outfile

echo $outfile

echo "all right let's move on to serious things"

openssl enc -aes-256-cbc -salt -in $infile -out $outfile -k PASS

mv pwd /home/encrypted-Data
