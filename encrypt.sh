#!/bin/bash
pubkey=$1
file=$2
openssl rsautl -encrypt -pubin -inkey "$pubkey" -in "$file" -out "$file.enc"
if [ $? -eq 0 ]; then
    echo "Encryption successful. Encrypted file: $file.enc"
else
    echo "Encryption failed."
fi