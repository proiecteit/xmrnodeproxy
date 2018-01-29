#!/bin/bash

VERSION=$1
if [ -z "$VERSION" ]; then
    echo "Building: latest"
    TAG=latest
else
    echo "Building: $VERSION"
    TAG=$VERSION
fi

# Build
docker build -t proiecteit/xmrnodeproxy:${TAG} .

# Push
docker login
docker push proiecteit/xmrnodeproxy:${TAG}
docker logout
