FROM ubuntu:22.04
MAINTAINER Serdar Sarioglu, Serdar.Sarioglu@mysystem.org
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y && apt-get upgrade
RUN apt-get install -y --no-install-recommends apt-utils dialog
RUN apt-get install -y curl sudo build-essential lsb-release iproute2 iptables
RUN curl -O https://cloud-backend.openvpn.com/cvpn/api/v1/scripts/VWJ1bnR1IDIyLjA0/network/ubuntu_22_04.sh
RUN chmod +x ubuntu_22_04.sh
RUN ./ubuntu_22_04.sh

