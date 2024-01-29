# docker-alpine:3.16.0

+ 用于构建镜像，实现docker in docker
+ 需要挂载`/usr/bin/docker:/usr/bin/docker,/var/run/docker.sock:/var/run/docker.sock`
+ 支持make命令
+ 支持bash，默认为sh
