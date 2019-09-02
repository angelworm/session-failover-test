FROM gradle:jdk12 AS build

ADD . /project
WORKDIR /project

RUN gradle war

FROM tomcat:9.0.24-jdk12-openjdk-oracle

COPY --from=build /project/build/libs/session-failover-test-1.0-SNAPSHOT.war $CATALINA_HOME/webapps/session-failover-test.war
