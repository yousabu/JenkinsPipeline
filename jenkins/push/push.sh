#!/bin/bash

#export BUILD_TAG=115

echo "*****************************"
echo "*** Pushing Image...... *****"
echo "*****************************"


IMAGE="maven-project"


echo "** Logging in **"

docker login -u youssefabu -p $PASS

echo "*** Tagging Image..... ***"

docker tag $IMAGE:$BUILD_TAG youssefabu/$IMAGE:$BUILD_TAG

echo "*** Pushing Image..... ***"

docker push youssefabu/$IMAGE:$BUILD_TAG

echo "## DONE ##"
