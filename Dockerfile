FROM node:6.10-alpine

RUN apk --no-cache add tini \
	&& apk --no-cache add --virtual devs gcc make python libarchive-tools ca-certificates \
	&& npm install -g ghost-cli && ghost --version \
	&& mkdir -p /ghost/blog \
	&& cd /ghost/blog \
	&& ghost install local \
	&& ghost stop \
	&& apk del devs \
	&& npm cache clean \
	&& rm -rf /tmp/npm*

WORKDIR /ghost/blog

EXPOSE 2368

#Run Init System
ENTRYPOINT ["/sbin/tini"]
