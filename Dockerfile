FROM ubuntu:15.10
MAINTAINER Daniel Gauch <daniel@gauch.biz>

RUN apt-get update

# Install wget
RUN apt-get install -y wget

# Get the kubernetes binary
RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.1.3/bin/linux/amd64/kubectl
RUN chmod +x kubectl
RUN mv kubectl /usr/local/bin



