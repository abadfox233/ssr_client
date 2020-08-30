FROM alpine:3.6


ARG BRANCH=manyuser
ARG WORK=~


RUN apk --no-cache add python \
    libsodium \
    wget

ADD shadowsocksr.tar.gz ~

WORKDIR $WORK/shadowsocksr/shadowsocks


EXPOSE 1080

VOLUME ["/config"]
CMD ["python", "local.py", "-c",  "/config/config.json"]
