docker restart $(docker ps | grep prom/prometheus | grep -oE "^[0-9a-zA-Z]+")
# docker service update monitoring_prometheus && docker container prune
echo
echo "Waiting for the docker containers to run..."
sleep 10
docker rm $(docker ps --filter status=exited -q)
echo "All is done! You can check if no container is stopped by typing \"docker ps -a | grep -i exited\""
