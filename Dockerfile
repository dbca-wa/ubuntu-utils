FROM ubuntu:20.04
MAINTAINER asi@dbca.wa.gov.au
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y \
  && apt install --no-install-recommends -y wget curl git vim openssh-client rsync iputils-ping postgresql-client \
  && rm -rf /var/lib/apt/lists/* \
