FROM node:10.9.0-alpine

RUN echo "http://mirrors.aliyun.com/alpine/v3.8/main/" >/etc/apk/repositories \
    && echo "http://mirrors.aliyun.com/alpine/v3.8/community/" >>/etc/apk/repositories \
    && apk add --no-cache tzdata nginx \
    && mkdir -p /var/www/html/ /run/nginx \
    && sed -i "s%access_log /var/log/nginx/access.log main;%access_log /dev/stdout main;%" /etc/nginx/nginx.conf \
    && sed -i "s%error_log /var/log/nginx/error.log warn;%error_log /dev/stdout warn;%" /etc/nginx/nginx.conf \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone \
    && apk del tzdata \
    && npm config set registry https://registry.npm.taobao.org \
    && npm install -g cnpm