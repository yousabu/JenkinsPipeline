#!/bin/bash

echo maven-project > /tmp/.auth

echo $BUILD_TAG >> /tmp/.auth


echo $PASS >> /tmp/.auth


scp -i /opt/prod /tmp/.auth prod-user@192.168.122.162:/tmp/.auth

scp -i /opt/prod  ./jenkins/deploy/publish.sh prod-user@192.168.122.162:/tmp/publish.sh


ssh -i /opt/prod prod-user@192.168.122.162 "/tmp/publish.sh"
