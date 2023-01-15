FROM ubuntu:20.04

RUN apt update && apt install --no-recommends -y \
    ffmpeg \
    fop \
    ghostscript \
    imagemagick \
    php-apcu \
    php-apcu-bc \
    php-common \
    php7.4-cli \
    php7.4-common \
    php7.4-curl \
    php7.4-json \
    php7.4-ldap \
    php7.4-mbstring \
    php7.4-memcached \
    php7.4-mysql \
    php7.4-opcache \
    php7.4-readline \
    php7.4-xml \
    php7.4-xsl \
    php7.4-zip \
    poppler-utils \
    && rm -rf /var/lib/apt/lists/*

RUN update-java-alternatives -s java-1.11.0-openjdk-amd64

WORKDIR /src
COPY atom-2.7.0.tar.gz .
RUN mkdir -p /usr/share/nginx/atom
