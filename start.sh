#!/bin/bash
docker run -it -p 8080:80 -p 22222:22 --name=manati-dev -d docker-ansible
