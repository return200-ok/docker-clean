clean docker container not running and dangling image. \
bash docker-clean.sh
,,,,
# 

# find large volume
```
du -h --max-depth=1 /var/lib/docker/overlay2/ |sort -hr
```

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

# find which overlay is belong to which images
```
for image in $(docker images --quiet --format '{{.Repository}}:{{.Tag}}'); do
    merged_dir=$(docker inspect "$image" --format '{{.GraphDriver.Data.MergedDir}}' | grep -Po '^.+?(?=/merged)')
    echo "$merged_dir = $image"
done
```
