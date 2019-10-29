FROM ubuntu

COPY sources.list /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y
RUN apt-get install openssh-server openssh-client net-tools vim -y
RUN mkdir /root/.ssh && echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJsgeBnW+ivbTKANI4n81YOPoPPrdq4nbcyUY5jEmNw81+rLeenQL3C3Xb85wF8aAgu/ZjtrPN2/lXELAGRRP5WK47fKC+CVxtydh2gcfArmC5aeWO9XTPUZdyyNcp9EWII1+MeVmwF01f8eRUgP02fd0eU9pp9VwXQIbeHTTOao4MYfMcdEP6zrgY9mbrrL+TIKDY12vl2klf/tOi9QDkhajOTk9mzQcQE2l7C0h5Gjw86VZfSI04KVzkzHCuQ7Zq81FbWy2xURTUmbjp7+3RNvCBySoZFHJS+NUo5jwoOX1HNQAHUWEnXK96rAO4TlvNPFT3XaoMV+SgvFcxIE0n root@1694a99bdaab' > /root/.ssh/authorized_keys

ENTRYPOINT service ssh start && bash