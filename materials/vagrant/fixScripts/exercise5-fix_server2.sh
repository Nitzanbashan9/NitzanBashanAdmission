#!/bin/bash
#add fix to exercise5-server2 here
ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y >/dev/null 2>&1
echo "vagrant" >pass.txt
sudo apt-get install sshpass
sshpass -f pass.txt  ssh-copy-id -i ~/.ssh/id_rsa.pub vagrant@server1 -o StrictHostKeyChecking=no
