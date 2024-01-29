FROM daocloud.io/java:openjdk-8

RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list && \
    apt-get update &&  \
	curl -O https://arthas.aliyun.com/arthas-boot.jar
