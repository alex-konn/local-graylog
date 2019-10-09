docker run -v '/var/lib/docker/containers:/usr/share/dockerlogs/data:ro' -v '/var/run/docker.sock:/var/run/docker.sock' --network="host" --name filebeat local-docker-filebeat:latest
