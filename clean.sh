#!/bin/bash
NAME=pod-sushy
podman stop ${NAME}
podman rm ${NAME}
podman rmi ${NAME}
