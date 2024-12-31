#check softwares installed or not
#!/bin/bash
echo "Checking for software"
if [ -z $1 ]
then
echo "Please provide software name"
else
if [ -z $(which $1) ]
then
echo "Software not installed"
else
echo "Software installed"
fi