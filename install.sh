#!/bin/bash

read -p "Enter Your trash folder: " TrashFolder
read -p "Enter Your Software bin folder: " BinFolder
echo -e "\nYour trash folder is $TrashFolder!"
echo "Your Software bin folder is $BinFolder!"

#Step1
sed -i "24d"  rt
sed -i "23a alias rm=\"$BinFolder/rt\""  rt
echo "alias rm=\"$BinFolder/rt\""  >> ~/.bashrc
sed -i "25d"  rt
sed -i "24a Trashdir=\"$TrashFolder\""  rt 

#step2
cp rt $BinFolder

#step3
crontab -l > /tmp/crontab.$$
echo "0 0 * * 0 rm -rf $TrashFolder/* " >> /tmp/crontab.$$  
crontab /tmp/crontab.$$
source ~/.bashrc 

echo -e "\n\nGood jobs! \nInstallation of rm-rt is finished! \n"

