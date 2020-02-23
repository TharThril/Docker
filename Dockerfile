FROM ubuntu:18.04
RUN apt-get clean
RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get install sudo
RUN sudo apt-get -y upgrade
RUN sudo apt-get install -y php7.0 mysql-server apache2 curl systemd  ufw openssh-server
RUN mkdir webmnj
RUN sudo usermod -d /var/lib/mysql mysql
RUN mkdir script
COPY crearbbdd.sh  /script/crearbbdd.sh
CMD ["bin/bash"]
