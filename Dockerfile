FROM ghcr.io/linuxserver/baseimage-alpine:3.15

LABEL maintainer="Adam Beardwood"
LABEL org.opencontainers.image.source=https://github.com/TheSpad/docker-dive

ARG GOCACHE=/tmp

RUN \
  apk add --update --no-cache --virtual=build-dependencies \
    go && \
  apk add -U --upgrade --no-cache  \
    bash \
    curl \
    jq && \
  echo "**** install docker cli ****" && \
  mkdir -p /tmp/docker && \
  if [ -z ${DOCKER_RELEASE+x} ]; then \
    DOCKER_RELEASE=$(curl -sX GET "https://api.github.com/repos/docker/cli/tags" | \
    jq -r '.[] | .name' | grep -P -v -m 1 '(rc|beta|alpha)' | sed 's/^.//'); \
  fi && \
  ARCH=$(uname -m | sed 's/armv7l/armhf/') && \
  curl -s -o \
    /tmp/docker.tar.gz -L \
    "https://download.docker.com/linux/static/stable/${ARCH}/docker-${DOCKER_RELEASE}.tgz" && \
  tar xf \
    /tmp/docker.tar.gz -C \
    /tmp/docker/ --strip-components=1 && \
  mv /tmp/docker/docker /usr/local/bin && \
  echo "**** installed docker cli version ${DOCKER_RELEASE} ****" && \
  echo "**** install dive ****" && \
  mkdir -p /tmp/dive && \
  if [ -z ${DIVE_RELEASE+x} ]; then \
    DIVE_RELEASE=$(curl -sX GET "https://api.github.com/repos/wagoodman/dive/releases/latest" \
    | awk '/tag_name/{print $4;exit}' FS='[""]'); \
  fi && \
  curl -s -o \
    /tmp/dive.tar.gz -L \
    "https://github.com/wagoodman/dive/archive/${DIVE_RELEASE}.tar.gz" && \
  tar xf \
    /tmp/dive.tar.gz -C \
    /tmp/dive/ --strip-components=1 && \
  cd /tmp/dive && \
  go build -o /usr/local/bin/dive && \
  echo "**** installed dive version ${DIVE_RELEASE} ****" && \
  echo "**** clean up ****" && \  
  apk del --purge \
    build-dependencies && \
  rm -rf \
    /tmp/* \
    /root/go

ENTRYPOINT ["/usr/local/bin/dive"]