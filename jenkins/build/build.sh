#!/bin/bash

#export BUILD_TAG=1200

# move to the working dir

cd /jenkins/jenkins-data/pipeline

# copy the new jar to the build location

cp -f java-app/target/*.jar jenkins/build/


echo "************************************"
echo "** Building Docker Image **"
echo "************************************"

cd jenkins/build/ && docker-compose -f docker-compose.yml build --no-cache
