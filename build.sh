#!/usr/bin/env bash

if [ ! -f ./containers/jenkins-master.tar ]; then
 packer build jenkins-master.json
fi

docker import containers/jenkins-master.tar  jenkins-master:latest
docker-compose up --build --remove-orphans -d
mkdir -p jenkins-master/build/jobs/hello-dropwizard/workspace
chmod -R 777 jenkins-master/build/jobs/hello-dropwizard
cp jenkins-master/build/Dockerfile jenkins-master/build/jobs/hello-dropwizard/workspace
sleep 1
