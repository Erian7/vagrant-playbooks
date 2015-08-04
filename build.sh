#!/bin/bash
echo "Host 127.0.0.1" >> ~/.ssh/config
echo "  StrictHostKeyChecking no" >> ~/.ssh/config
docker build -t docker-ansible .
docker run -it -p 8080:80 -p 22222:22 --name=manati-dev -d docker-ansible
ansible-playbook -i docker-host site.yml -vvvv --private-key=~/.ssh/id_rsa -u root
