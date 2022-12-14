#!/bin/sh

if [ $# -le 1 ]; then
    echo "curl -LJs https://tinyurl.com/docker-woeusb | $0 <device> <path to iso>"
    exit 1
fi

DEVICE="$1"
IMAGE=$(realpath $2)
DIR=$(dirname $IMAGE)

docker run --rm -it \
    --privileged \
    -v "/dev:/dev:z" \
    --device $DEVICE \
    -v "$DIR:$DIR:z" \
    rafalb8/docker-woeusb:latest \
    --device $IMAGE $DEVICE