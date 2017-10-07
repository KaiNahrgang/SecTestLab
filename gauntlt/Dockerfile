FROM ubuntu:16.04
MAINTAINER kai.nahrgang@edu.fh-joanneum.at

RUN \
  apt-get update && \
  apt-get install -y build-essential \
    ca-certificates \
    curl \
    libcurl3 \
    libcurl4-openssl-dev \
    wget \
    zlib1g-dev \
    libxml2-dev \
    libxslt1-dev \
    ruby \
    ruby-dev \
    ruby-bundler \
    python-dev \
    python-pip \
    python-setuptools && \
    rm -rf /var/lib/apt/lists/*

RUN gem install gauntlt --no-rdoc --no-ri

RUN gem install arachni -v 1.5.1 --no-rdoc --no-ri

ENTRYPOINT [ "/usr/local/bin/gauntlt" ]