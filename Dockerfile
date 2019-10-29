FROM ubuntu

COPY sources.list /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y
RUN apt-get install openssh-server openssh-client net-tools vim -y
