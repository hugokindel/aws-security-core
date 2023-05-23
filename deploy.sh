#!/bin/sh

# Deploy layer LXML for Python 3.9

cd lambda-layers/layer-lxml-python39

/bin/sh deploy.sh

cd ../..

# Deploy layer MSAL for Python 3.9

cd lambda-layers/layer-msal-python39

serverless deploy

cd ../..
