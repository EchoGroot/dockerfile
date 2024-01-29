FROM openjdk:11-jre-buster

USER root

RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list && \
    apt update && \
    apt install -y locales
    