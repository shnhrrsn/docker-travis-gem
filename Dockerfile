FROM alpine:3.6
MAINTAINER Zoltan Burgermeiszter <zoltan@burgermeiszter.com>

ENV TRAVIS_CONFIG_PATH='/config'
RUN echo 'gem: --no-rdoc --no-ri' >> "$HOME/.gemrc" && \
	apk add --update --no-cache git build-base ruby-dev libffi-dev ruby-bundler ca-certificates && \
    gem install travis && \
    rm /var/cache/apk/* && \
    rm -rf /usr/share/ri

ENTRYPOINT ["travis"]
