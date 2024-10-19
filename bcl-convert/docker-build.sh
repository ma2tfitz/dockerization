#/bin/bash

set -euo pipefail
RPM="bcl-convert-4.2.7-2.el7.x86_64.rpm"
TAG="bcl-convert-4.2.7"

docker build --platform=linux/amd64 --build-arg RPM=$RPM -t $TAG .
iid=$(docker images | grep "^$TAG" | awk '{print $3}')
echo "Saving image $iid as ${TAG}.tar"
docker save $iid -o "${TAG}.tar"
