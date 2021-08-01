#!/bin/bash
#add fix to exercise5-server2 here
in server2:
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa ; sshpass -p vagrant ssh-copy-id -i ~/.ssh/id_rsa.pub server1 ; ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o PasswordAuthentication=no server1
