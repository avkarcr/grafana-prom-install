docker restart $(docker ps | grep prom/prometheus | grep -oE "^[0-9a-zA-Z]+")
