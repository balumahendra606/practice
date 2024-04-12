ARG VERSION=22.04
FROM ubuntu:${VERSION}
LABEL creator="balu"
RUN apt-get update -y && apt install nginx -y
RUN mkdir /balu
VOLUME /balu
ENV EDITOR=/usr/bin/nano
WORKDIR /var/www
COPY /index.html /var/www/html
EXPOSE 80
HEALTHCHECK --interval=10s --timeout=5s --start-period=5s --retries=3 CMD curl --fail http://localhost:80/ || exit 1
ENTRYPOINT [ "nginx","-g" ]
CMD [ "daemon off;" ]



