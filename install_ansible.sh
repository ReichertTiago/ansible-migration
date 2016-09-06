#!/bin/bash

yum install wget unzip -y
wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -ivh epel-release-6-8.noarch.rpm
rm epel-release-6-8.noarch.rpm
yum install ansible -y
cd /etc/ansible
wget https://code.lb2.com.br/pd/migration-dashboard-ansible/repository/archive.zip?ref=master --no-check-certificate
unzip archive.zip?ref=master
mv /etc/ansible/migration-dashboard-ansible-*/* /etc/ansible
rm -rf /etc/ansible/migration-dashboard-ansible-*
rm /etc/ansible/archive.zip?ref=master

