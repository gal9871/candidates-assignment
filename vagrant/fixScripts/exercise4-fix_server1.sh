#!/bin/bash
#add fix to exercise4-server1 here
#pw = vagrant
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config ; sudo -- sh -c "echo '192.168.100.11 server2' >> /etc/hosts" ; sudo apt install sshpass ; sudo systemctl stop sshd ; sudo systemctl start sshd 

