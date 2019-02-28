FROM williamyeh/ansible:debian9

ENV DOCKER_VERSION 18.09.2
ENV COMPOSE_VERSION 1.23.2

RUN curl -Lo docker.tgz https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_VERSION.tgz \
  && tar xzvf docker.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker.tgz \
  && curl -Lo /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/$COMPOSE_VERSION/docker-compose-linux-x86_64 \
  && chmod +x /usr/local/bin/docker-compose

