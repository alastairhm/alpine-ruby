FROM alpine:3.15

RUN apk update && apk upgrade && apk add --update \
  build-base \
  ruby ruby-irb ruby-rake ruby-io-console ruby-bigdecimal ruby-json ruby-bundler \
  ruby-dev libxml2-dev libxslt-dev && \
  rm -rf /var/cache/apk/* && \
  echo 'gem: --no-document' > /etc/gemrc

CMD ["/bin/sh"]
