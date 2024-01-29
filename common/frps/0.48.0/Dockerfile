FROM 172.30.1.1/common/alpine-timezone-shanghai:3.11.3

# 内网穿透服务端
RUN wget https://ghproxy.com/https://github.com/fatedier/frp/releases/download/v0.48.0/frp_0.48.0_linux_amd64.tar.gz  --no-check-certificate \
    && tar -zxvf frp_0.48.0_linux_amd64.tar.gz \
    && rm -f frp_0.48.0_linux_amd64.tar.gz \
    && mv frp_0.48.0_linux_amd64 frp

CMD ["/frp/frps", "-c", "/frp/frps.ini"]
