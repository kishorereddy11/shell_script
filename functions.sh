#!bin/bash
USER_ID=$(id -u)

if($USER_ID -eq 0){
    echo "cuurent user is root"
}
#for package in 
