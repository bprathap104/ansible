#!/bin/bash
setenforce 0
sudo sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/" /etc/ssh/sshd_config;
sudo sed -i "s/^#ChallengeResponseAuthentication yes/ChallengeResponseAuthentication yes/" /etc/ssh/sshd_config;
echo 'restarting...'
sudo systemctl restart sshd
iptables -F
echo -e "vagrant\nvagrant" | sudo passwd vagrant
