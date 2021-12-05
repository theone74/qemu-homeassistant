FROM tianon/qemu:native

COPY haos_ova-6.6.qcow2 /hda.qcow2

VOLUME [ "/data" ]

ENV QEMU_HDA /hda.qcow2
ENV QEMU_HDA_SIZE 32G
ENV QEMU_BOOT "order=d"
ENV QEMU_PORTS 8123
# ENV QEMU_NO_SSH 1
# ENV QEMU_NO_VNC 1
# ENV QEMU_NO_SERIAL 1
# ENV QEMU_RAM 1024s
# ENV QEMU_CPU 2

# EXPOSE 8123
          

ENTRYPOINT [ "start-qemu", "-virtfs", "local,path=/data,mount_tag=host0,security_model=passthrough,id=host0" ]