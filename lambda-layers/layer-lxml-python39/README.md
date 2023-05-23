# LXML for Python 3.9

Due to compatibility reasons with AWS Lambda, LXML had to be run inside a docker container which is why this layer depends on docker alongside serverless.

## How to deploy

- Make sure `docker`, `awscli` and `serverless` (through `npm`) are installed.
- Configure your credentials with `aws configure`.
- Run `./deploy.sh`.
