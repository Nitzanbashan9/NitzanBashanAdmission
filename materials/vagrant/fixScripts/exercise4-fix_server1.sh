#!/bin/bash
#add fix to exercise4-server1 here

#add server2 IP to hosts file
echo "192.168.60.11 server2" | sudo tee -a /etc/hosts

#change PasswordAuthentication status
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config

#restart the service
sudo service sshd restart
