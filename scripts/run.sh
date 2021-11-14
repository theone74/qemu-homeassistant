#!/bin/sh

# docker run --rm -it \
# 	--privileged \
# 	--device=/dev/kvm \
# 	alpine sh

# docker run -it --rm \
# 	--device /dev/kvm \
# 	--name qemu-container \
# 	--network host \
# 	-v `pwd`/alpine.qcow2:/tmp/hda.qcow2 \
# 	-v `pwd`/data:/data \
# 	-e QEMU_HDA=/tmp/hda.qcow2 \
# 	-e QEMU_HDA_SIZE=100G \
# 	-e QEMU_CPU=2 \
# 	-e QEMU_RAM=1024 \
# 	-e QEMU_BOOT='order=d' \
# 	-e QEMU_PORTS='8123' \
# 	-e QEMU_NO_SSH=1 \
# 	-e QEMU_NO_VNC=1 \
# 	tianon/qemu:native \
# 	start-qemu -virtfs local,path=/data,mount_tag=host0,security_model=passthrough,id=host0
# 	# -e QEMU_NET_USER_EXTRA="net=192.168.88.0/24,dhcpstart=192.168.88.120" \
# 	# -e QEMU_NO_SERIAL=1 \
# 	# -p 3322:22 \
# 	# -p 8123:8123 \


docker run -it --rm \
	--device /dev/kvm \
	--name qemu-container \
	--network host \
	-v `pwd`/data:/data \
	-e QEMU_CPU=2 \
	-e QEMU_RAM=1024 \
	qha