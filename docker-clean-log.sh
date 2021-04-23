#To get the size of the logs
sudo sh -c "du -ch /var/lib/docker/containers/*/*-json.log"
#To only get the total of the size of the logs
sudo sh -c "du -ch /var/lib/docker/containers/*/*-json.log | grep total"
#To delete all logs
sudo sh -c "truncate -s 0 /var/lib/docker/containers/*/*-json.log"
#or
>  /var/lib/docker/containers/*/*-json.log
#or
cat /dev/null > /var/lib/docker/containers/*/*-json.log
#or
echo "" > /var/lib/docker/containers/*/*-json.log
