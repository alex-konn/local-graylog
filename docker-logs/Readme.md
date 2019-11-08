# docker-logs
Contains a filebeat setup to collect logs from all your docker containers and send them to a graylog input.
The automatic collection of container logs will only work on linux so far.

## Requirements
- [docker](https://www.docker.com/)

## Getting started
Creating the docker container:\
First run `docker build -t local-docker-filebeat:latest .` inside this directory.\
Finish the setup by executing the `./run.sh`.

## Troubleshooting
When your graylog input does not receive any data, check if the:
- graylog input listens to the same port configured in the filebeat.yml output.
- log files are correctly mounted within the filebeat container.
- filebeat config is correct by running `filebeat test config -c ./filebeat.yml` inside the container.
- filbeat setup sends logs to the output correctly by running `filebeat test output` insise the container.

## Setup changes
When you need to change e.g. the filebeat.yml, you will need to recreate the docker image and container.
When the contianer is already stopped, get the filebeat container id with `docker ps -a` and remove it with `docker rm <container-id>`. Than rerun the steps mentioned in "Getting started".

This setup is inspired by:\
https://www.freecodecamp.org/news/docker-container-log-analysis-with-elastic-stack-53d5ec9e5953/
