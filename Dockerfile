FROM ubuntu

COPY sources.list /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y
RUN apt-get install openssh-server openssh-client net-tools vim -y
RUN mkdir /root/.ssh && echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDRzeXpxpEEsdJEJM3c8GVIAFr/RSV8xEhTHNvgPZMhCv/WNMDXeyh0Bf4d+icqwhVTrn3QbPngiQwevaS5EyHtOn7uUuEqjWGTI3Jbj2whvR9hxbSKY/96uYZdZF0vv2loMZATa2fAaDgKfJ8yEy/eCT8W3Xy03FX7XOBYP7GL3ocDPqN4omNaevb2Z7VvG8LzlobrVecilNAAKcyqk6NKtPdS04XUueUoMdJpuo4ZhGnxx3LE7Zq0bXBTJpqpkMm2fCm2Hl3MPCezpvFpYuU2l0G6cDBeUv7Fd1+OftkQjozRxanzlGuWIHd5J/j3vda6Kl1fww63Y3L405ROxUBR root@45497d4a2918' > /root/.ssh/authorized_keys

ENTRYPOINT service ssh restart && bash