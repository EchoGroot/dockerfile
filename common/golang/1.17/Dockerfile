FROM golang:1.17

# 设置私服
RUN go env -w GOPRIVATE=yuyy.com

# 设置忽略私服的https证书校验
RUN go env -w GOINSECURE=yuyy.com
RUN git config --global http.sslverify false
RUN git config --global https.sslverify false

# 设置代理
RUN go env -w GOPROXY="https://goproxy.cn,direct"

RUN go env -w GO111MODULE=on
