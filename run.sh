#!/bin/sh
NAME=pod-sushy
export PODMAN_ID="$(podman ps -aq --filter name=pod-sushy)"

if [[ "${PODMAN_ID}" != "" ]]; then
	podman start ${NAME}
else
	podman run \
	-d --privileged \
	--restart=always \
	--network=host \
	-v /var/run/libvirt:/var/run/libvirt \
	--name ${NAME} \
	pod-sushy:latest
fi

