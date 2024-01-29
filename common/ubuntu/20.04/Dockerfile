# 22.04 使用 make 有问题
FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

# -–no-install-recommends 避免安装非必须的文件，从而减小镜像的体积
# 清理掉apt缓存var/lib/apt/lists可以减小镜像大小
# 将多行参数按字母顺序排序。这可以帮助你避免重复包含同一个包，更新包列表时也更容易，也更容易阅读和审查
# .vimrc 配置用来解决中文乱码，显示行号
RUN sed -i 's@http://.*archive.ubuntu.com@http://repo.huaweicloud.com@g' /etc/apt/sources.list && \
    sed -i 's@http://.*security.ubuntu.com@http://repo.huaweicloud.com@g' /etc/apt/sources.list && \
    apt-get update && apt-get install -y --no-install-recommends \
    curl \
    dnsutils \
    iputils-ping \
    git \
    make \
    openssh-server \
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
