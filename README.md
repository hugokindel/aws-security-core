# Security Core

This repository is used to managed all core elements shared between multiple in-house security tools on AWS.

## Lambda Layers

Lambda Layers is a solution develop by AWS to package generic libraries used by Lambdas. We have a few layers to manage dependencies, some of which are necessary to make them works, some of which are made for a clean architecture:

- `layer-lxml-python39`
- `layer-msal-python39`

## How to deploy

- Make sure `awscli` and `serverless` (through `npm`) are installed.
- Configure your credentials with `aws configure`.
- Run `./deploy.sh`.
