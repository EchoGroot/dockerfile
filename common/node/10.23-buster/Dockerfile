FROM node:10.23-buster

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone \
    && npm config set registry https://registry.npm.taobao.org