FROM alpine:3.11.3

RUN echo "http://mirrors.aliyun.com/alpine/v3.11/main/" >/etc/apk/repositories \
    && echo "http://mirrors.aliyun.com/alpine/v3.11/community/" >>/etc/apk/repositories \
    && apk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone \
    && apk del tzdata