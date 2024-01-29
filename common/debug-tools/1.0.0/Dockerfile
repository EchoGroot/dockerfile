FROM 172.30.1.1/common/golang:1.20.3 as grpcurl

RUN go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest


FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN sed -i 's@http://.*archive.ubuntu.com@http://repo.huaweicloud.com@g' /etc/apt/sources.list && \
    sed -i 's@http://.*security.ubuntu.com@http://repo.huaweicloud.com@g' /etc/apt/sources.list && \
    sed -i 's@http://.*ports.ubuntu.com@http://mirrors.ustc.edu.cn@g' /etc/apt/sources.list && \
    apt-get update && apt-get install -y --no-install-recommends \
    curl \
    dnsutils \
    git \
    htop \
    iftop \
    iputils-ping \
    iproute2 \
    jq \
    make \
    mysql-client \
    net-tools \
    nmap \
    openssh-server \
    redis \
    strace \
    tcpdump \
    vim \
    wget \
    && rm -rf /var/lib/apt/lists/*  && \
    touch ~/.vimrc && \
    echo "set fileencodings=ucs-bom,utf-8,gbk,gb2312,cp936,gb18030,big5,latin-1" >> ~/.vimrc && \
    echo "set encoding=utf-8" >> ~/.vimrc && \
    echo "set termencoding=utf-8" >> ~/.vimrc && \
    echo "set fileencoding=utf-8" >> ~/.vimrc && \
    echo "set number" >> ~/.vimrc && \
    git config --global http.sslverify false && \
	git config --global https.sslverify false

RUN wget --no-check-certificate -O /usr/bin/httpstat https://ghproxy.com/https://github.com/davecheney/httpstat/releases/download/v1.0.0/httpstat-linux-amd64-v1.0.0 && \
    chmod +x /usr/bin/httpstat

COPY --from=grpcurl  /go/bin/grpcurl /usr/bin/grpcurl
