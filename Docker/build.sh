#!/usr/bin/env bash
DOCKER_IMAGE_NAME=csra/stub-fhir-ws
DOCKER_IMAGE_VERSION=latest

mvn clean package

docker rmi --force=true ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION}
docker build --force-rm=true -f Docker/Dockerfile --rm=true -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION} .
echo =========================================================================
echo Docker image is ready.  Try it out by running:
echo     docker run --rm -ti -p 8080:8080 -P ${DOCKER_IMAGE_NAME}
echo =========================================================================
