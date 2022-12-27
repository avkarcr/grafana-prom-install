# Grafana & Prometheus install
### 1. Install main aps
```
apt update && apt upgrade -y
apt install curl htop git docker.io -y
git clone https://github.com/digitalstudium/grafana-docker-stack.git
docker swarm init
docker stack deploy -c grafana-docker-stack/docker-compose.yml monitoring
```
### 2. Clone git & install docker container
```
git clone https://github.com/digitalstudium/grafana-docker-stack.git
docker swarm init
docker stack deploy -c grafana-docker-stack/docker-compose.yml monitoring
```
### 3. Download needed scripts
```
curl -sO https://raw.githubusercontent.com/avkarcr/grafana-prom-install/main/edit_config.sh && chmod +x edit_config.sh
curl -sO https://raw.githubusercontent.com/avkarcr/grafana-prom-install/main/restart_prometheus.sh && chmod +x restart_prometheus.sh
```
