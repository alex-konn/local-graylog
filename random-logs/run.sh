#!/bin/bash

# use this script's path
RANDOM_LOGS_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker run -d \
    -v ${RANDOM_LOGS_PATH}':/usr/share/filebeat/random-logs' \
    --network="host" \
    --name filebeat-random-logs \
    random-logs-filebeat:latest
