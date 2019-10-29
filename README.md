```
docker network create --subnet=172.19.0.0/16 --gateway=172.19.0.1 dev-network
docker run -it --name deploy1 --net dev-network --ip 172.19.0.100 deploy_ubuntu /bin/bash
docker start deploy1
```