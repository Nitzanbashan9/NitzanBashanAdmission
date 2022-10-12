#!/bin/bash
#add fix to exercise5-server1 here

#generate ssh key
ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y >/dev/null 2>&1

#workaround in order to insert password in a script
echo "vagrant" >pass.txt
sudo apt-get install sshpass

#update authorized_keys file in server2
sshpass -f pass.txt  ssh-copy-id -i ~/.ssh/id_rsa.pub vagrant@server2 -o StrictHostKeyChecking=no
