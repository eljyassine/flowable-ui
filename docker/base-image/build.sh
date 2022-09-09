#!/bin/bash
set -eou pipefail

readonly IMAGE=${1:-"flowable/flowable-ui:latest"}
echo "Image name: ${IMAGE}"
mkdir -p flowable-ui/
#cp -r ../../modules/flowable-ui/flowable-ui-app/target/flowable-ui .
echo "Building image..."
docker build -t ${IMAGE} -f Dockerfile .
