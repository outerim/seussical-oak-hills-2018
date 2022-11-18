FROM alpine:edge

LABEL maintainer="Michele Adduci <adduci@tutanota.com>"

VOLUME /site

EXPOSE 4000

WORKDIR /site

RUN apk update && apk --update add \
    gcc \
    g++ \
    make \
    git \
    curl \
    bison \
    ca-certificates \
    tzdata \
    ruby \
    ruby-rdoc \
    ruby-irb \
    ruby-bundler \
    ruby-nokogiri \
    ruby-dev \
    glib-dev \
    zlib-dev \
    libc-dev && \
    rm -rf /var/cache/apk/*

COPY Gemfile Gemfile.lock /site
RUN bundle install
RUN git config --global --add safe.directory /site
