clean docker container not running and dangling image. \
bash docker-clean.sh


clear docker images with regex name
docker rmi $(docker images --format '{{.Repository}}:{{.Tag}}' | grep 'name:tag')
