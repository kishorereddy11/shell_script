#!bin/bash
USER_ID=$(id -u)

if [ $USER_ID -eq 0 ]
    then 
    echo "cuurent user is root"
    else
    echo "Not a Root user"
    exit 1
fi

#for package in 
