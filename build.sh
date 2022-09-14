#!/bin/sh

VERSION='5.2.4'
IMAGE='rafalb8/docker-woeusb'

docker build -t "$IMAGE:$VERSION" --build-arg VERSION=$VERSION .
docker tag "$IMAGE:$VERSION" "$IMAGE:latest"