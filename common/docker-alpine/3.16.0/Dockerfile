FROM alpine:3.16.0

# 加速
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk update

# 安装make
RUN apk add make

# 安装bash
RUN apk add bash \
            bash-doc \
            bash-completion

# 安装git
RUN apk add git

# 安装 glibc，执行挂载的二进制文件时需要，例如挂载的docker
# 用于动态链接系统函数，Alpine 为了简单轻量，没有使用大多数 Linux 发行版使用的 glibc 而选择了 musl libc
ENV GLIBC_REPO=https://ghproxy.com/https://github.com/sgerrand/alpine-pkg-glibc
ENV GLIBC_VERSION=2.30-r0
RUN set -ex && \
    apk --update add libstdc++ curl ca-certificates && \
    for pkg in glibc-${GLIBC_VERSION} glibc-bin-${GLIBC_VERSION}; \
        do curl -sSL ${GLIBC_REPO}/releases/download/${GLIBC_VERSION}/${pkg}.apk -o /tmp/${pkg}.apk; done && \
    apk add --allow-untrusted /tmp/*.apk && \
    rm -v /tmp/*.apk && \
    /usr/glibc-compat/sbin/ldconfig /lib /usr/glibc-compat/lib

