# random-logs

## Requirements
- [flog](https://github.com/mingrammer/flog) - for random log generation

## Getting started
After finishing the docker-logs setup, you can place any log file inside this directory.
If you want to create random log messesges, you can use a tool like flog.

Examples:
- Generate a apache log file with 10000 message, with a time difference of 10 seconds for each message.\
`flog -t log -w -s 10 -f apache_common -n 10000`
- Generate a log message every second, unti you cancel the task.\
`flog -t log -w -d 1 -f apache_combined -l`