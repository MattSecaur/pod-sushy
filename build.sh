#!/bin/sh

IMAGE_NAME=pod-sushy
podman build --squash-all -t ${IMAGE_NAME} .
