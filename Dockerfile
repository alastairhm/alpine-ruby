FROM alpine:latest

RUN apk add --update \
  build-base \
  ruby \
  ruby-dev \
  libxml2-dev \
  libxslt-dev && \
  rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
