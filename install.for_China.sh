#!/bin/bash
  
read -p "Enter Your trash folder: " TrashFolder
read -p "Enter Your Software bin folder: " BinFolder
echo -e "\nYour trash folder is $TrashFolder!"
echo "Your Software bin folder is $BinFolder!"

#Step1
mkdir -p $BinFolder
sed -i "24d"  rt.for_China
sed -i "23a alias rm=\"$BinFolder/rt.for_China\""  rt.for_China
echo "alias rm=\"$BinFolder/rt.for_China\""  >> ~/.bashrc
sed -i "25d"  rt.for_China
sed -i "24a Trashdir=$TrashFolder"  rt.for_China

#step2
cp rt.for_China $BinFolder
chmod 755 $BinFolder/rt.for_China

#step3
crontab -l > /tmp/crontab.$$
echo "0 0 * * 0 rm -rf $TrashFolder/* " >> /tmp/crontab.$$
crontab /tmp/crontab.$$
source ~/.bashrc

echo -e "\n\nGood jobs! \nInstallation of rm-rt is finished! \n"

