RANDOM_LOGS_PATH="/Users/username/projects/local-graylog/docker-logs/random-logs"
CONTAINERS_PATH="/var/lib/docker/containers"

docker run -d \
    -v ${CONTAINERS_PATH}':/usr/share/dockerlogs/data:ro' \
    -v ${RANDOM_LOGS_PATH}':/usr/share/filebeat/dockerlogs' \
    -v '/var/run/docker.sock:/var/run/docker.sock' \
    --network="host" \
    --name filebeat \
    local-docker-filebeat:latest
