FROM node:12-slim

LABEL maintainer="Channarong Janpanich <cj.pipekung@gmail.com>"

ADD ./oracle/*.zip ./

ENV LD_LIBRARY_PATH="/opt/oracle/instantclient"
ENV OCI_HOME="/opt/oracle/instantclient"
ENV OCI_LIB_DIR="/opt/oracle/instantclient"
ENV OCI_INCLUDE_DIR="/opt/oracle/instantclient/sdk/include"
ENV OCI_VERSION="19_3"

RUN apt-get update && \
    apt-get install -y unzip libaio1 && \
    mkdir -p /opt/oracle && \
    unzip instantclient-basic-linux.x64-19.3.0.0.0dbru.zip -d /opt/oracle && \
    mv "${LD_LIBRARY_PATH}_${OCI_VERSION}" $LD_LIBRARY_PATH && \
    rm -f instantclient-*.zip && \
    apt-get remove -y unzip && \
    apt-get clean autoclean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN echo "${LD_LIBRARY_PATH}" | tee -a /etc/ld.so.conf.d/oracle_instant_client.conf && ldconfig

WORKDIR /usr/src/app