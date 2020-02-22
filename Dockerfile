FROM ubuntu:18.04
RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get install sudo
RUN sudo apt-get -y upgrade
RUN sudo apt-get install -y php7.0
RUN sudo apt-get install -y mysql-server
RUN sudo apt-get install -y apache2
RUN sudo apt-get install -y curl
RUN sudo apt-get install -y systemd
RUN mkdir webmnj
CMD ["bin/bash"]