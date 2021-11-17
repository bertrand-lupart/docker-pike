#!/bin/sh

# Docker hub
USER="bertrandlupart"
REPO="pike"
DHUB="${USER}/${REPO}"

ARCH="linux/amd64,linux/i386,linux/arm64,linux/arm,linux/ppc64le,linux/s390x,linux/mips64le"

/usr/local/bin/docker buildx build -t ${DHUB}:8.0.702 --platform=${ARCH} --push .
