#!/bin/sh

image="public.ecr.aws/sam/build-python3.9"
layer="layer-lxml-python39"

docker run --name $layer --platform linux/arm64 -v "$PWD":/var/task $image /bin/sh -c "pip install -r requirements.txt -t python/lib/python3.9/site-packages/; exit"
zip -9 -r $layer.zip python
rm -r python
docker rm $layer --force
docker image rm $image
serverless deploy
rm $layer.zip
