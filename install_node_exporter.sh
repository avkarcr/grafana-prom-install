#!/bin/bash
apt update && apt upgrade -y
apt install -y screen curl
apt install -y docker.io
docker run -d --net="host" --pid="host" -v "/:/host:ro,rslave" quay.io/prometheus/node-exporter:latest --path.rootfs=/host
