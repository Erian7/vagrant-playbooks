# Default Dockerfile for Manati Docker.
FROM ubuntu:12.04.5
MAINTAINER kporras07
RUN apt-get update -y
RUN apt-get install -y openssh-server
RUN apt-get install -y python
RUN mkdir /var/run/sshd
RUN mkdir /root/.ssh && chmod 700 /root/.ssh
ADD id_rsa.pub /root/.ssh/authorized_keys
RUN chmod 400 /root/.ssh/authorized_keys && chown root. /root/.ssh/authorized_keys
EXPOSE 22 80
ENTRYPOINT ["/usr/sbin/sshd", "-D"]
