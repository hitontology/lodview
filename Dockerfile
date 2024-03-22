# syntax=docker/dockerfile:1
FROM maven:3-jdk-11 AS builder
WORKDIR /app
COPY pom.xml /app
RUN mvn dependency:resolve -Dmaven.test.skip=true
COPY . /app
RUN --mount=type=cache,target=/root/.m2 mvn -B -T 1C -q compile war:war

# Tomcat 10 needs further changes, see https://tomcat.apache.org/migration-10.html
FROM tomcat:9
ENV CATALINA_OPTS="-XX:+UseSerialGC"
COPY --from=builder /app/target/lodview.war /usr/local/tomcat/webapps/ontology.war
COPY --from=builder /app/logging.properties /usr/local/tomcat/conf/logging.properties
CMD ["catalina.sh", "run"]
EXPOSE 8080 8009
