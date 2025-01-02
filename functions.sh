#!bin/bash
USER_ID=$(id -u)

if [ $USER_ID -eq 0 ]
    then 
    echo "cuurent user is root"
    else
    echo "Not a Root user .. you must login root user to execute this script"
    exit 1
fi

dnf install mysql -y

if [$? -eq 0 ]
then
echo "Installing MYSQL ... Success"
else
echo "Installing MYSQL .... Failed"
exit 1
fi

dnf install git -y
if [$? -eq 0 ] 
then
echo "Installing git .... Success"
else
echo "Installing git .... failed"
exit 1
fi 
#for package in 
