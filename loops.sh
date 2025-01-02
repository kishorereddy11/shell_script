#!/bin/bash
#Loops in shell script
echo "Test"
for package in apache2 mysql git
do
dnf list installed $package &> /dev/null
if [ $? -eq 0 ]
then
echo "$package is installed"
else
echo "$package is not installed"
fi
done