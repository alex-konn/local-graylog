RANDOM_LOGS_PATH="/Users/username/projects/local-graylog/random-logs"

docker run -d \
    -v ${RANDOM_LOGS_PATH}':/usr/share/filebeat/random-logs' \
    --network="host" \
    --name filebeat-random-logs \
    random-logs-filebeat:latest
