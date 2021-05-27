## Login Method

Login using ssh in **bandit.labs.overthewire.org** using user name: **banditx** and the password: **KEY** for accessing resources used in **level x → level y**

```
ssh banditx@bandit.labs.overthewire.org -p 2220
Password: KEY
```

## Bandit Level 0 → Level 1

```
bandit0@bandit:~$ ls
readme
bandit0@bandit:~$ cat readme
boJ9jbbUNNfktd78OOpsqOltutMc3MY1 
```
 ## Bandit Level 1 → Level 2

```
bandit1@bandit:~$ ls
-
bandit1@bandit:~$ cat ./-
CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9
```
 ## Bandit Level 2 → Level 3

```
bandit2@bandit:~$ ls
spaces in this filename
bandit2@bandit:~$ cat spaces\ in\ this\ filename 
UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK
```
 ## Bandit Level 3 → Level 4

```
 bandit3@bandit:~$ ls 
inhere
bandit3@bandit:~$ cd inhere/
bandit3@bandit:~/inhere$ ls -a
.  ..  .hidden
bandit3@bandit:~/inhere$ cat .hidden 
pIwrPrtPN36QITSp3EQaw936yaFoFgAB
```
 ## Bandit Level 4 → Level 5

```
bandit4@melinda:~$ ls -a
.  ..  .bash_logout  .bashrc  .profile  inhere
bandit4@melinda:~$ cd inhere
bandit4@melinda:~/inhere$ file ./-*
bandit4@melinda:~/inhere$ cat ./-file07
koReBOKuIDDepwhWk7jZC0RTdopnAYKh
```
 ## Bandit Level 5 → Level 6

```
bandit5@bandit:~/inhere$ cd
bandit5@bandit:~$ cd inhere/
bandit5@bandit:~/inhere$ find . -size 1033c -not -executable
./maybehere07/.file2
bandit5@bandit:~/inhere$ cat ./maybehere07/.file2
DXjZPULLxYr17uwoI01bNLQbtFemEgo7
```
 ## Bandit Level 6 → Level 7

```
bandit6@melinda:~$ find / -user bandit7 -group bandit6 -size 33c
/var/lib/dpkg/info/bandit7.password
bandit6@melinda:~$ cat /var/lib/dpkg/info/bandit7.password
HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs
```
 ## Bandit Level 7 → Level 8

```
bandit7@melinda:~$ grep "millionth" data.txt
password:cvX2JJa4CFALtqS87jk27qwqGhBM9plV
```
 ## Bandit Level 8 → Level 9

```
bandit8@bandit:~$ sort data.txt | uniq -u
UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR
```
 ## Bandit Level 9 → Level 10

```
bandit9@bandit:~$ strings data.txt| grep "\="
truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk
```
 ## Bandit Level 10 → Level 11

```
bandit10@bandit:~$ base64 -d data.txt 
IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR
```
 ## Bandit Level 11 → Level 12

```
bandit11@bandit:~$ cat data.txt | tr A-Za-z N-ZA-Mn-za-m
5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu
```
 ## Bandit Level 12 → Level 13

```
mkdir /tmp/sam1
cp data.txt /tmp/sam1
cd /tmp/sam1
file data.txt    
xxd -r data.txt > output
file output      
mv output output.gz
gzip -d output.gz
file output       
mv output output.bz2
bzip2 -d output.bz2
file output       
mv output output.gz
gzip -d output.gz
file output      
mv output output.tar
tar xfv output.tar
file data6.bin    
mv data6.bin data6.bz2
bzip2 -d data6.bz2
file data6       
mv data6 data6.tar
tar -xfv data6.tar
file data8.bin  
mv data8.bin data8.gz
gzip -d data8.gz
file data8       
cat data8
8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL
```
 ## Bandit Level 13 → Level 14

```
bandit13@bandit:~$ ssh bandit14@localhost  -i sshkey.private 

bandit14@bandit:~$ cat /etc/bandit_pass/bandit14
4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
```
 ## Bandit Level 14 → Level 15

```
bandit14@bandit:~$ nc localhost 30000
4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
Yes
BfMYroe26WYalil77FoDi9qh59eK5xNr
```
 ## Bandit Level 15 → Level 16

```
bandit15@bandit:~$ openssl s_client -connect localhost:30001 
BfMYroe26WYalil77FoDi9qh59eK5xNr
Yes
cluFn7wTiGryunymYOu4RcffSxQluehd
```
 
