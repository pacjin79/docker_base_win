#!/bin/bash

# this script installs and runs the ansible script on the guess
# machine. Mostly used on windows where ansible cannot operate natively
if sudo dpkg -s ansible;
then 
    echo "-----ansible installed"
else 
    echo "-----ansible not installed, installing..."
    sudo apt-get install -y software-properties-common &&
    sudo apt-add-repository ppa:ansible/ansible &&
    sudo apt-get update &&
    sudo apt-get install -y ansible 
fi

#run playbook
echo "-----running ansible playbook"
sudo cp -f /scripts/hosts /etc/ansible/hosts &&
sudo ansible-playbook /ansible/playbook.yml

