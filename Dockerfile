FROM williamyeh/ansible:debian9

ENV DOCKER_VERSION 19.03.12
ENV COMPOSE_VERSION 1.26.2

RUN apt-get update \
  && apt-get -y install jq

RUN curl -Lo docker.tgz https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_VERSION.tgz \
  && tar xzvf docker.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker.tgz \
  && curl -Lo /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/$COMPOSE_VERSION/docker-compose-linux-x86_64 \
  && chmod +x /usr/local/bin/docker-compose

