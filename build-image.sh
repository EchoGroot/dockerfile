#!/bin/bash

docker login "${DOCKER_REGISTRY_SERVER}" --username "${DOCKER_REGISTRY_USER}" --password "${DOCKER_REGISTRY_PASSWORD}"

FILES=$(git diff --name-only --diff-filter=d HEAD^ HEAD | grep Dockerfile | sort)
if [ ${#FILES[*]} -eq 0 ]; then
  echo "No Dockerfile changed, skip build image"
  exit 0
fi

for FILE in $FILES; do
  DIR=$(dirname "$FILE")
  echo "DIR: $DIR"
  cd $DIR
  VERSION=${DIR##*/}
  echo "VERSION: $VERSION"
  IMAGE_NAME=${DIR%/*}
  echo "IMAGE_NAME: $IMAGE_NAME"

  docker build -t $IMAGE_NAME:$VERSION .
  docker tag "$IMAGE_NAME:$VERSION" "${DOCKER_REGISTRY_ADDR}/$IMAGE_NAME:$VERSION"
  docker tag "$IMAGE_NAME:$VERSION" "${DOCKER_REGISTRY_ADDR}/$IMAGE_NAME:latest"
  docker push "${DOCKER_REGISTRY_ADDR}/$IMAGE_NAME:$VERSION"
  docker push "${DOCKER_REGISTRY_ADDR}/$IMAGE_NAME:latest"
  docker rmi -f "${DOCKER_REGISTRY_ADDR}/$IMAGE_NAME:$VERSION"
  docker rmi -f "${DOCKER_REGISTRY_ADDR}/$IMAGE_NAME:latest"
  docker rmi -f "$IMAGE_NAME:$VERSION"

  cd -
done
