FROM debian:latest

# Update
RUN apt-get update && apt-get dist-upgrade -y && apt-get autoremove --purge -y

# Install tools & dependencies
RUN apt-get install -y tree htop tmux vim git rsync wget curl \
      cmake ninja-build clang build-essential pkg-config autotools-dev bison flex \
      cpio unzip file bc libncurses-dev asciidoc graphviz python3-matplotlib ccache

# Add user 'br' with password 'br'
RUN useradd --create-home --shell /bin/bash -p "$(openssl passwd -1 br)" br
USER br
WORKDIR /home/br
ENV HOME /home/br
ENV LANG C.UTF-8

ADD bootstrap.sh /home/br/bootstrap.sh
