FROM 172.30.1.1/common/golang:1.17.9

RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list && \
    apt-get install -y apt-transport-https ca-certificates && \
    apt-get update && \
    apt-get install -y --no-install-recommends vim openssh-server zip unzip && \
    zip -v && \
    whereis zip && \
    whereis unzip && \
    touch ~/.vimrc && \
    echo "set fileencodings=ucs-bom,utf-8,gbk,gb2312,cp936,gb18030,big5,latin-1" >> ~/.vimrc && \
    echo "set encoding=utf-8" >> ~/.vimrc && \
    echo "set termencoding=utf-8" >> ~/.vimrc && \
    echo "set fileencoding=utf-8" >> ~/.vimrc && \
    echo "set number" >> ~/.vimrc && \
    cd /tmp && \
    curl -sSL \
        "https://ghproxy.com/https://github.com/protocolbuffers/protobuf/releases/download/v21.9/protoc-21.9-linux-x86_64.zip" \
        -O && \
    unzip protoc-21.9-linux-x86_64.zip && \
    mv bin/protoc /usr/local/bin/protoc && \
    go install google.golang.org/protobuf/cmd/protoc-gen-go@latest && \
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest && \
    go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2@latest && \
    go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway@latest && \
    go install github.com/envoyproxy/protoc-gen-validate@latest && \
    go install github.com/go-kratos/kratos/cmd/protoc-gen-go-http/v2@latest && \
    go install github.com/go-kratos/kratos/cmd/protoc-gen-go-errors/v2@latest && \
    ls -l /go/bin


# 触发流水线更新镜像
# envoyproxy/protoc-gen-validate，有bug，引入多个其他proto文件里的枚举，生成的代码有编译错误。所以需要更新
