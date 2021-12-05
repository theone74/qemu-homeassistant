#!/bin/bash

tag=`date +%y%m%d%H%M`
docker build -t theone74/qemu-homeassistant:ov${tag} .
docker push theone74/qemu-homeassistant:ov${tag}
docker tag theone74/qemu-homeassistant:ov${tag} theone74/qemu-homeassistant:olatest
docker push theone74/qemu-homeassistant:olatest
