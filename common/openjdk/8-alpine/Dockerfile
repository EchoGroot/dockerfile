FROM openjdk:8-alpine

# 图形验证码
#  https://blog.csdn.net/qq_31263039/article/details/106545833
RUN echo "http://mirrors.aliyun.com/alpine/v3.9/main/" >/etc/apk/repositories \
    && echo "http://mirrors.aliyun.com/alpine/v3.9/community/" >>/etc/apk/repositories \
    && apk add --no-cache tzdata ttf-dejavu fontconfig\
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone \
    && apk del tzdata