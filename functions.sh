#!bin/bash
USER_ID=$(id -u)

if [ $USER_ID -eq 0 ]
    then 
    echo "cuurent user is root"
    else
    echo "Root user"
fi
#for package in 
