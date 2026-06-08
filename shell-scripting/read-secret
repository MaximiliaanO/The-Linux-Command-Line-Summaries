#!/bin/bash

if read -t 10 -sp "enter secret passphrase > " secret_pass; then
    echo "\nSecret passphrase ='$secret_pass'"
else
    echo -e "\nInput timed out" >&2
    exit 1
fi