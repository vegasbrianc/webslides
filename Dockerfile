FROM nginx:alpine

MAINTAINER Brian Christner <brian.christner@gmail.com>

WORKDIR /usr/share/nginx/html



RUN set -x \
	&& apk update && apk upgrade \
	&& apk add unzip curl \
	&& curl -fSL https://github.com/jlantunez/webslides/archive/master.zip -o webslides.zip \
	&& unzip webslides.zip \
	&& rm webslides.zip \
	&& mv webslides-master/* . \
	&& rm -R webslides-master

EXPOSE 80
