FROM ubuntu:24.04
ARG VERSION
LABEL maintainer="Minho Ryang <minho+docker@bharvest.io>" \
    description="Ubuntu 24.04 with HAProxy 3.2 and Lua 5.4" \
    org.opencontainers.image.authors="Minho Ryang <minho+docker@bharvest.io>" \
    org.opencontainers.image.description="Ubuntu 24.04 with HAProxy 3.2 and Lua 5.4" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://github.com/minho-bharvest/docker-ubuntu-24.04-haproxy-3.2-lua-5.4" \
    org.opencontainers.image.source="https://github.com/minho-bharvest/docker-ubuntu-24.04-haproxy-3.2-lua-5.4"

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y --no-install-recommends software-properties-common && add-apt-repository ppa:vbernat/haproxy-3.2 -y && apt install -y --no-install-recommends haproxy lua5.4 lua-luaossl && rm -rf /var/lib/apt/lists/*
