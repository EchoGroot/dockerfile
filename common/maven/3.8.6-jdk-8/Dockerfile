FROM maven:3.8.6-jdk-8

# 

USER root

COPY settings.xml /usr/share/maven/conf/settings.xml

RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install apt-transport-https ca-certificates -y && \
    apt-get install -y --no-install-recommends make

