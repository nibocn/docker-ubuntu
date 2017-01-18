FROM ubuntu:16.04
MAINTAINER Richard<nibocn@gmail.com>

COPY sources.list /etc/apt

RUN apt-get update \
    && apt-get install -y curl \
    && apt-get install -y wget \
    && rm -rf /var/lib/apt/lists/*

CMD ["curl", "-s", "http://ip.cn"]
