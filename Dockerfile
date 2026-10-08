# syntax=docker/dockerfile:1
FROM ubuntu:latest
LABEL org.opencontainers.image.title="ibms" \
  org.opencontainers.image.description="Ubuntu Server plus extra utilities" \
  org.opencontainers.image.source="https://github.com/dbca-wa/ubuntu-utils" \
  org.opencontainers.image.vendor="DBCA" \
  org.opencontainers.image.authors="asi@dbca.wa.gov.au"

ENV DEBIAN_FRONTEND=noninteractive

RUN <<EOF
set -euxo pipefail
apt-get update
apt-get install -y --no-install-recommends \
  ca-certificates \
  apt-transport-https \
  wget \
  curl \
  git \
  vim \
  openssh-client \
  rsync \
  iputils-ping \
  postgresql-client \
  lftp \
  dnsutils \
  telnet
EOF
