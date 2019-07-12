FROM ubuntu:18.04
MAINTAINER asi@dbca.wa.gov.au
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y
RUN apt install --no-install-recommends -y wget curl git vim openssh-client rsync iputils-ping \
  && rm -rf /var/lib/apt/lists/* \
