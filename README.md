---
# rm-rt
#### A tool  to avoid  deleting files with commands rm by mistake
---

## 1. Introduction
####  &emsp;1.1 This bash is designed to replace rm.
####  &emsp;1.2 It can avoid deleting files with commands rm by mistake
####  &emsp;1.3 You can continue to use rm to delete files, and it will move the target file or directory to a trash directory instead of directly delete. 
####  &emsp;1.4 Besides, you can set the time to automatically empty the trash directory.
#
## 2. Installation
#### &emsp;2.1 cp rt to your directory
#### &emsp;2.2 vim rt, set your trash directory and your global path of rt
#### &emsp;2.3 echo 'alias rm="your-directory/rt"'  >>  ~/.bashrc ; source  ~/.bashrc
#### &emsp;2.4 crontab -e , write '0 0 * * 0 rm -rf /your-trash-directory/*'
#
## 3. Usage 
#### &emsp;3.1 delete files or directory, and you can restore the file, if you find that you deleted the wrong file.
```sh
rm  test.file  test.directory
Finished: have moved the target file or directory to 'trash directory'
```
#####
#####  &emsp;3.2 permanently delete files or directory
```sh
rm  del test.file  test.directory
Are you sure to permanently delete files or directories? Y/N
```
#####  &emsp;&emsp; If you input Y or yes, the test.file  test.directory are permanently deleted 
```sh
Warning: have permanently deleted the target file or directory
```
#####  &emsp;&emsp; If you input No or no, the test.file  test.directory are be move to trash directory.
```sh
Finished: have moved the target file or directory to 'trash directory'
```
#
## 4. Getting Help
#### &emsp;Please use the GitHub's Issues page if you have questions. You may also directly contact WeigangZheng at zwg2016@yeah.net 
#### &emsp;Date: 2020-04-05
