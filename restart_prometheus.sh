docker restart $(docker ps | grep prom/prometheus | grep -oE "^[0-9a-zA-Z]+")
# docker service update monitoring_prometheus && docker container prune
docker rm $(docker ps --filter status=exited -q)
