#!/bin/bash
#add fix to exercise5-server1 here
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa ;  sshpass -p vagrant ssh-copy-id -i ~/.ssh/id_rsa.pub server2 ; ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o PasswordAuthentication=no server2
