FROM alpine:3.12
LABEL maintainer="shaddock<hushuang123a@foxmail.com>"

ADD wework.sh /opt/wework.sh

RUN \
  sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
  apk add --no-cache \
    jq bash && \
    chmod +x /opt/wework.sh

CMD [ "sh", "/opt/wework.sh" ]