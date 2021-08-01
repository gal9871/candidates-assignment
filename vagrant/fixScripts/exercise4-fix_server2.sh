#!/bin/bash
#add fix to exercise4-server2 here
#pw = vagrant
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config ; sudo -- sh -c "echo '192.168.100.10 server1' >> /etc/hosts" ; sudo apt update ; sudo apt install sshpass ; sudo systemctl stop sshd ; sudo systemctl start sshd 

