
FROM tomcat:latest
LABEL creator="balu"
RUN apt-get update -y 
RUN mkdir /balu
VOLUME /balu
ENV EDITOR=/usr/bin/nano
WORKDIR /user/local/tomcat
COPY /gameoflife.war /var/lib/tomcat10/webapps
EXPOSE 8080
HEALTHCHECK --interval=10s --timeout=5s --start-period=5s --retries=3 CMD curl --fail http://localhost:8080/ || exit 1
ENTRYPOINT [ "" ]
CMD [ "catalina.sh","run" ]