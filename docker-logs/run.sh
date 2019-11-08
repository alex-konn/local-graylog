CONTAINERS_PATH="/var/lib/docker/containers"

docker run -d \
    -v ${CONTAINERS_PATH}':/usr/share/dockerlogs/data:ro' \
    -v '/var/run/docker.sock:/var/run/docker.sock' \
    --network="host" \
    --name filebeat \
    local-docker-filebeat:latest
