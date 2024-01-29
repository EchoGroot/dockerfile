FROM bitnami/kubectl:1.9.11

USER root

RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list && \
    apt-get update &&  \
    apt-get install apt-transport-https ca-certificates -y && \
    apt-get install -y --no-install-recommends make git

