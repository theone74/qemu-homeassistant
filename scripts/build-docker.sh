#!/bin/bash

tag=`date +%y%m%d%H%M`
docker build -t theone74/qemu-homeassistant:v${tag} .
docker push theone74/qemu-homeassistant:v${tag}
docker tag theone74/qemu-homeassistant:v${tag} theone74/qemu-homeassistant:latest
docker push theone74/qemu-homeassistant:latest
s