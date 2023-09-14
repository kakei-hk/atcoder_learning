FROM ubuntu:20.04

ARG USERNAME="developer"
ARG GROUPNAME="developer"
ARG UID=1000
ARG GID=1000
ARG PASSWORD="developer"
ARG WORKDIR="/workspace"


# Basic packages
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    build-essential \
    curl \
    ca-certificates \
    vim \
    less \
    git \
    wget \
    unzip \
    openssh-client \
    pkg-config \
    gdb \
    clang-format \
    cmake \
    ninja-build \
    nodejs npm

# Python packages
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    python3.8 \
    python3-pip \
    python-is-python3

# Install Python packages
COPY requirements.txt /
RUN pip install -r requirements.txt

# Install atcoder-cli
RUN npm install -g atcoder-cli

# Modify authority
RUN groupadd -g ${GID} ${GROUPNAME} \
    && useradd -m -s /bin/bash -u ${UID} -g ${GID} ${GROUPNAME}
USER ${USERNAME}
WORKDIR ${WORKDIR}
RUN chown -R ${USERNAME}:${GROUPNAME} ${WORKDIR}
