#check softwares installed or not
#!/bin/bash
echo "Checking for software"
if [ -z $1 ]
then
echo "Please provide software name"
exit 1
fi