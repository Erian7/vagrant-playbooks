#!/bin/bash

sudo docker run -p 40022:22 -p 80:8080 -d 
ansible-playbook -i host deploy.yml
