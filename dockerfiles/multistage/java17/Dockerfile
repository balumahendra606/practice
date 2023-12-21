FROM maven:3-sapmachine-17 as build
RUN git clone https://github.com/spring-projects/spring-petclinic.git && \
    cd spring-petclinic && \
    mvn package 
## jar location /spring-petclinic/target/spring-petclinic-3.2.0-SNAPSHOT.jar
FROM maven:3-sapmachine-17
LABEL project="multistage spc"
LABEL author="balumahendra"
EXPOSE 8080
COPY --from=build /spring-petclinic/target/spring-petclinic-3.2.0-SNAPSHOT.jar /spring-petclinic-3.2.0-SNAPSHOT.jar
CMD ["java", "-jar", "/spring-petclinic-3.2.0-SNAPSHOT.jar"]
