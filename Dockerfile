FROM telosalliance/ubuntu-20.04:latest

# Do everything in one RUN command
RUN export DEBIAN_FRONTEND=noninteractive \
  && export INFER_VERSION=0.17.0 \
  && apt-get update \
  # KEEP PACKAGES SORTED ALPHABETICALY
  && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    libtinfo5 \
    tzdata \
    xz-utils \
  && curl -sSL "https://github.com/facebook/infer/releases/download/v${INFER_VERSION}/infer-linux64-v${INFER_VERSION}.tar.xz" | tar -C /opt -xJ \
  && ln -sf "/opt/infer-linux64-v${INFER_VERSION}/bin/infer" /usr/local/bin/infer \
  && rm -rf /var/lib/apt/lists/*
