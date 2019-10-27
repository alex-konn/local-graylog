# docker-logs
Contains a filebeat setup to collect logs from all your docker containers and send them to a graylog input.
The automatic collection of container logs will only work on linux so far.
The filebeat docker container also allows sending any log file from your computer to the graylog input.

## Requirements
- docker

## Getting started
Initially adjust the `RANDOM_LOGS_PATH` variable in the `run.sh`, by inserting the path for the `random-logs` directory inside this repo.
If you want to provide local logs, you just need to place them inside the `random-logs` directory. Have a look at the [following section](random-logs/Readme.md) for more information about the random log generation.

On macOS, you can't reference to `127.0.0.1` inside the filebeat.yml and the input. The easiest workaround is using the computers local network ip address.

Creating the docker container:\
First run `docker build -t local-docker-filebeat:latest .` inside this directory.\
Finish the stup by executing the `./run.sh`.

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
