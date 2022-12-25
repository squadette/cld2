FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

# All actions which might affect image size are squeezed
RUN apt-get update && apt-get install -y curl

ENV PACKAGES  "\
    build-essential \
    libyaml-dev \
    vim \
    less \
    git"

# Install dependencies and clean documentation
RUN apt-get update && \
    apt-get --allow-unauthenticated install \
            --no-install-recommends -y \
            $PACKAGES && \
            rm -rf /var/lib/apt/lists/* \
           /usr/share/doc \
           /usr/share/man \
           /var/cache/debconf


# Install RVM
RUN curl -sSL https://rvm.io/mpapis.asc https://rvm.io/pkuczynski.asc | gpg --import -

RUN curl -L https://get.rvm.io | rvm_path=/var/cld2/rvm bash -s 1.29.12

RUN echo "source /var/cld2/rvm/scripts/rvm" >> /etc/bash.bashrc

WORKDIR /var/cld2/src
