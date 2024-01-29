# 22.04 使用 make 有问题
FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

SHELL ["/bin/bash", "-c"]

# -–no-install-recommends 避免安装非必须的文件，从而减小镜像的体积
# .vimrc 配置用来解决中文乱码，显示行号
RUN sed -i 's@http://.*archive.ubuntu.com@http://repo.huaweicloud.com@g' /etc/apt/sources.list && \
    sed -i 's@http://.*security.ubuntu.com@http://repo.huaweicloud.com@g' /etc/apt/sources.list && \
    apt-get clean && \
    apt-get install apt-transport-https  -y && \
    apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates make vim git curl wget openssh-server gnupg2 && \
    curl -k https://mirrors.aliyun.com/kubernetes/apt/doc/apt-key.gpg | apt-key add -  && \
    echo 'deb https://mirrors.aliyun.com/kubernetes/apt/ kubernetes-xenial main' > /etc/apt/sources.list.d/kubernetes.list  && \
    apt-get update && \
    apt install -y kubectl=1.28.2-00 && \
    echo "kubectl version:" && \
    kubectl version --client && \
    touch ~/.vimrc && \
    echo "set fileencodings=ucs-bom,utf-8,gbk,gb2312,cp936,gb18030,big5,latin-1" >> ~/.vimrc && \
    echo "set encoding=utf-8" >> ~/.vimrc && \
    echo "set termencoding=utf-8" >> ~/.vimrc && \
    echo "set fileencoding=utf-8" >> ~/.vimrc && \
    echo "set number" >> ~/.vimrc && \
    git config --global http.sslverify false && \
    git config --global https.sslverify false && \
    wget -c https://mirrors.aliyun.com/golang/go1.20.3.linux-amd64.tar.gz -O - | tar -xz -C /usr/local && \
    echo 'export PATH=$PATH:/usr/local/go/bin' >> /etc/profile && \
    echo 'export PATH=$PATH:/usr/local/go/bin' >> /root/.bashrc && \
    source /etc/profile && \
    go version && \
    go env -w GOPRIVATE=yuyy.com && \
    go env -w GOINSECURE=yuyy.com && \
    go env -w GOPROXY="https://goproxy.cn,direct" && \
    go env -w GO111MODULE=on


