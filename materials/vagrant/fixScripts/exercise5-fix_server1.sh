#!/bin/bash
#add fix to exercise5-server1 here
echo "192.168.60.11 server2" | sudo tee -a /etc/hosts
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo service sshd restart


ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y >/dev/null 2>&1
echo "vagrant" >pass.txt
sudo apt-get update
sudo apt-get install sshpass
sshpass -f pass.txt  ssh-copy-id -i ~/.ssh/id_rsa.pub vagrant@server2 -o StrictHostKeyChecking=no
