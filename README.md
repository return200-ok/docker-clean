clean docker container not running and dangling image. \
bash docker-clean.sh
,,,,
# 


# find which overlay is belong to which container
```
for container in $(docker ps --all --quiet --format '{{ .Names }}'); do
    echo "$(docker inspect $container --format '{{.GraphDriver.Data.MergedDir }}' | \
      grep -Po '^.+?(?=/merged)'  ) = $container"
done
```
## Delete the overlay: 
    - Delete container and recreate it
    - Run comnand: ``` docker system prune -a -f ```