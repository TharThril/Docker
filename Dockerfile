FROM ubuntu:18.04
RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get install sudo
RUN sudo apt-get -y upgrade
RUN sudo apt-get install -y php7.0
RUN sudo apt-get install -y mysql-server
RUN sudo apt-get install -y apache2 
RUN sudo apt-get install -y curl 
RUN sudo apt-get install -y systemd
RUN sudo apt-get install -y  ufw 
RUN sudo apt-get install -y openssh-server
RUN mkdir webmnj
RUN sudo usermod -d /var/lib/mysql mysql
RUN mkdir script
COPY crearbbdd.sh  /script/crearbbdd.sh
CMD ["bin/bash"]
