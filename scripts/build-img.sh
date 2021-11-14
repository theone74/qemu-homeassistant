#!/bin/bash

# cd packer-kvm
# docker run --rm \
#   -e PACKER_LOG=1 \
#   -e PACKER_LOG_PATH="packer-docker.log" \
#   -it \
#   --privileged \
#   --cap-add=ALL -v /lib/modules:/lib/modules \
#   -v `pwd`:/opt/ \
#   -w /opt/ goffinet/packer-qemu build bionic.json
  
# cd packer-alpine
docker run --rm \
  -e PACKER_LOG=1 \
  -e PACKER_LOG_PATH="packer-docker.log" \
  -p 5910:5910 \
  -it \
  --privileged \
  --cap-add=ALL -v /lib/modules:/lib/modules \
  -v `pwd`:/opt/ \
  -w /opt/ goffinet/packer-qemu build alpine.json

docker build -t qemu-homeassistant .