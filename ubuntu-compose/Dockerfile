FROM ubuntu:latest
ARG compose_version
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y curl && \
    curl -L "https://github.com/docker/compose/releases/download/$compose_version/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose && \
    apt-get remove --purge -y curl && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*
