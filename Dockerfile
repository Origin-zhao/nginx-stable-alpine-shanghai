FROM nginx:stable-alpine

RUN apk update \ 
    && apk add tzdata \
    && /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime\
    && echo 'Asia/Shanghai' > /etc/timezone\
    && rm -fr /var/cache/apk/
