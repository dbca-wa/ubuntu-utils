FROM ubuntu
LABEL org.opencontainers.image.authors=asi@dbca.wa.gov.au
LABEL org.opencontainers.image.source=https://github.com/dbca-wa/ubuntu-utils
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y \
  && apt install --no-install-recommends -y ca-certificates wget curl git vim openssh-client rsync iputils-ping postgresql-client lftp dnsutils telnet \
  && rm -rf /var/lib/apt/lists/* \
