# syntax=docker/dockerfile:1.3-labs
FROM telosalliance/ubuntu-20.04:2021-10-08

ENV DEBIAN_FRONTEND noninteractive
ENV INFER_VERSION 1.1.0

# Do everything in one RUN command
RUN /bin/bash <<EOF
set -euxo pipefail
apt-get update
# KEEP PACKAGES SORTED ALPHABETICALY
apt-get install -y --no-install-recommends \
  ca-certificates \
  curl \
  libtinfo5 \
  tzdata \
  xz-utils
curl -sSL "https://github.com/facebook/infer/releases/download/v${INFER_VERSION}/infer-linux64-v${INFER_VERSION}.tar.xz" | tar -C /opt -xJ
ln -sf "/opt/infer-linux64-v${INFER_VERSION}/bin/infer" /usr/local/bin/infer
apt-get clean
rm -rf /var/lib/apt/lists/*
EOF
