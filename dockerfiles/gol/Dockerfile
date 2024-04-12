FROM tomcat:9.0.85-jdk8-corretto as build
RUN yum install git -y
RUN git clone https://github.com/wakaleo/game-of-life.git 
RUN cd game-of-life && \
    mvn clean package
# create the jar file
FROM tomcat:9.0.85-jdk8-corretto
COPY --from=build /game-of-life/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080
CMD [ "catalina.sh","run" ]

##

FROM tomcat:9.0.85-jdk8-corretto
COPY gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080
CMD [ "catalina.sh","run" ]