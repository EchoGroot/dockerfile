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
    apt-get install -y --no-install-recommends ca-certificates make vim git curl wget openssh-server && \
    touch ~/.vimrc && \
    echo "set fileencodings=ucs-bom,utf-8,gbk,gb2312,cp936,gb18030,big5,latin-1" >> ~/.vimrc && \
    echo "set encoding=utf-8" >> ~/.vimrc && \
    echo "set termencoding=utf-8" >> ~/.vimrc && \
    echo "set fileencoding=utf-8" >> ~/.vimrc && \
    echo "set number" >> ~/.vimrc && \
    git config --global http.sslverify false && \
    git config --global https.sslverify false && \
    wget -c https://dl.google.com/go/go1.19.2.linux-amd64.tar.gz -O - | tar -xz -C /usr/local && \
    echo 'export PATH=$PATH:/usr/local/go/bin' >> /etc/profile && \
    source /etc/profile && \
    go version && \
    go env -w GOPRIVATE=yuyy.com && \
    go env -w GOINSECURE=yuyy.com && \
    go env -w GOPROXY="https://goproxy.cn,direct" && \
    go env -w GO111MODULE=on && \
    curl -k -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/1.19.6/2021-01-05/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl
