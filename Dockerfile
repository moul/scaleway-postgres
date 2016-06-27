## -*- docker-image-name: "scaleway/postgres:latest" -*-
FROM scaleway/ubuntu:amd64-xenial
# following 'FROM' lines are used dynamically thanks do the image-builder
# which dynamically update the Dockerfile if needed.
#FROM scaleway/ubuntu:armhf-xenial       # arch=armv7l
#FROM scaleway/ubuntu:arm64-xenial       # arch=arm64
#FROM scaleway/ubuntu:i386-xenial        # arch=i386
#FROM scaleway/ubuntu:mips-xenial        # arch=mips


MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/scw-builder-enter


# Install packages
RUN apt-get -q update         \
 && apt-get -y -qq upgrade    \
 && apt-get -y -qq install    \
        postgresql-9.5        \
 && apt-get clean


# Clean rootfs from image-builder
RUN /usr/local/sbin/scw-builder-leave
