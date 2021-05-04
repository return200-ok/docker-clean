!bim/bash
docker stop $(docker ps -q)
docker rmi -f $(docker images -a -q)
docker volume rm $(docker volume ls -qf dangling=true)
