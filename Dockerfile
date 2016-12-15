FROM alpine:3.4

RUN apk add -U curl
RUN apk add nginx
RUN apk add bash

RUN mkdir /run/nginx
RUN echo 'lofasz' > /var/lib/nginx/html/index.html

CMD nginx -g 'daemon off;'
