FROM node:14.20.0

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone \
    && npm config set registry https://registry.npm.taobao.org \
    && npm install -g yarn \
    && yarn config set registry https://registry.npm.taobao.org