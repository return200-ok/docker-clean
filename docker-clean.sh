docker container prune -f
docker rmi $(docker images -f dangling=true -q)
