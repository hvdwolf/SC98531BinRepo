#!/bin/bash

# Pass full path to the jar and testkey files
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# zip file given?
if [ "$1" = "" ]
then
        echo "Provide 6521 zip file for signing"
        echo "for example:  ./copy_install.sh 192.168.178.52"
        exit
fi


java -jar "${DIR}"/signapkv2.jar -w -v "${DIR}"/testkey.x509.pem "${DIR}"/testkey.pk8 "${1}" tmp.zip

# Maybe the user already gave correct names, maybe not
mv tmp.zip 6521_1.zip
mv "${1}" 6521_1_input.zip