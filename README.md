---
# rm-rt
#### A tool to avoid deleting files or directories with command rm by mistake.
#### Set a self-cleaning recycling station in linux system or others.
---

## 1. Introduction
####  &emsp;1.1 It is designed to replace old command [rm](http://man7.org/linux/man-pages/man1/rm.1.html) without having to delete it.
####  &emsp;1.2 It can avoid deleting files or directories with old command rm by mistake.
####  &emsp;1.3 You can continue to use new 'rm' to delete files or directories, and it will move the target file or directory to 
####  &emsp;&emsp;a trash directory instead of directly deleting them. 
####  &emsp;1.4 Besides, you can set the time to automatically empty the trash directory.
#
## 2. Installation
#### &emsp;2.1 git clone https://github.com/Velcon-Zheng/rm-rt.git
#### &emsp;2.2 you can simply run sh install.sh to install rt:
```sh
  sh install.sh
```
#### &emsp;    Then, you can set the trash folder and Software bin folder:
```sh
  Enter Your trash folder: ***
  Enter Your Software bin folder: ***
```
#### &emsp;    Next, the installation is running:
```sh
  Your trash folder is ***
  Your Software bin folder is ***
  
  Good jobs! 
  Installation of rt is finished!
```
#### &emsp;   You also can manually install rm-rt by 2.3-2.6;
#### &emsp;2.3 cp  rm-rt/rt to your directory;
#### &emsp;2.4 vim rt, set your trash directory and your global path of rt, the default is ~/zwg.trash;
#### &emsp;2.5 echo 'alias rm="your-directory/rt"'  >>  ~/.bashrc ; source  ~/.bashrc;
#### &emsp;2.6 [crontab](https://www.rosehosting.com/blog/linux-crontab/) -e , write '0 0 * * 0 rm -rf /your-trash-directory/*';
####  &emsp;&emsp;[This is optional and you can set the time to automatically empty your-trash-directory.](https://www.rosehosting.com/blog/linux-crontab/)
#
## 3. Usage 
#### &emsp;3.1 Delete files or directories, and you can restore them if you continue to need.
```sh
touch test.file ; mkdir test.directory
rm    test.file  test.directory
Finished: have moved the target file or directory to '$trash directory'
```
#####
#####  &emsp;3.2 Permanently delete files or directories
```sh
touch test.file ; mkdir test.directory
rm del    test.file  test.directory
Are you sure to permanently delete files or directories? Y/N
```
#####  &emsp;&emsp; If you input Y or yes, the test.file and test.directory are permanently deleted 
```sh
Warning: have permanently deleted the target file or directory
```
#####  &emsp;&emsp; If you input N or no, the test.file and test.directory are be moved to trash directory.
```sh
Finished: have moved the target file or directory to '$trash directory'
```
#
## 4. Thanks
#### &emsp;Thanks to Prof. Fan, Prof. Liu and others for their teaching knowledge of programming.
#### &emsp;Thanks to the network for providing many learning resources.
#
## 5. Getting Help
#### &emsp;Please use the GitHub's Issues page if you have questions. You may also directly contact WeigangZheng at zwg2016@yeah.net 
#### &emsp;Date: 2020-04-05
