FROM maven:3-jdk-8 AS builder
WORKDIR /app
COPY . /app
RUN mvn -B -q compile war:war

FROM tomcat:9-jre8-slim
ENV CATALINA_OPTS="-XX:+UseSerialGC"
COPY --from=builder /app/target/lodview.war /usr/local/tomcat/webapps/ontology.war
COPY --from=builder /app/logging.properties /usr/local/tomcat/conf/logging.properties

EXPOSE 8080 8009
