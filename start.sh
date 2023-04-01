#!/bin/bash
app="docker.test"
docker build -t ${app} .
docker run -d -p 80:8080 \
  --name=${app} \
  -v $PWD:/app ${app}