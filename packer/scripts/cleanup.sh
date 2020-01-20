#!/bin/bash -eux

# Uninstall Ansible and remove PPA.
sudo apt-get -y remove --purge ansible
sudo apt-add-repository --remove ppa:ansible/ansible

# Apt cleanup.
sudo apt-get -y autoremove
sudo apt-get -y update
