FROM maven:3.6.1-jdk-8 as maven_builder
WORKDIR /usr/app/
COPY pom.xml /usr/app
COPY src /usr/app/src
RUN pwd
RUN mvn install
FROM tomcat:latest
COPY --from=maven_builder /usr/app/target/DockerDemoApp-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps
EXPOSE 8888
CMD ["catalina.sh", "run"]

