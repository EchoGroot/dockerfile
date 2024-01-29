FROM 172.30.1.1/common/ubuntu:20.04

RUN wget -c --no-check-certificate https://mirrors.aliyun.com/golang/go1.20.7.linux-amd64.tar.gz?spm=a2c6h.25603864.0.0.a6b07c45FOi9wZ -O - | tar -xz -C /usr/local

ENV PATH=/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV GOLANG_VERSION=1.20.7
ENV GOPATH=/go
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH"

RUN go version && \
    go env -w GOPRIVATE=yuyy.com && \
    go env -w GOINSECURE=yuyy.com && \
    go env -w GOPROXY="https://goproxy.cn,direct" && \
    go env -w GO111MODULE=on && \
    apt-get install -y --no-install-recommends ca-certificates && \
    curl -kfsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get install -y nodejs && \
    node -v && \
    npm -v && \
    npm config set registry https://registry.npm.taobao.org  && \
    npm install -g yarn && \
    yarn config set registry https://registry.npm.taobao.org




