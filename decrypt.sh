#!/bin/bash
privkey=$1
password=$2
file=$3
openssl rsautl -decrypt -inkey "$privkey" -in "$file" -passin pass:"$password" -out "$file.dec"
if [ $? -eq 0 ]; then
    echo "Decryption successful. Decrypted file: $file.dec"
else
    echo "Decryption failed."
fi