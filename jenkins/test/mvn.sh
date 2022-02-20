#!/bin/bash

echo "*************************************************"
echo "**** TESTING..... ***********************************"
echo "*************************************************"

cd /jenkins/jenkins-data/pipeline

docker run --rm -v /jenkins/jenkins-data/jenkins_home/workspace/PIPELINE_PROJECT/java-app:/app  -v  /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
