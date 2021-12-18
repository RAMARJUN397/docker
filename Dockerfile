FROM openjdk:11
MAINTAINER "ARJUN"
EXPOSE 6060
ADD   target/Dockerdemo-0.0.1-SNAPSHOT.war Dockerdemo-0.0.1-SNAPSHOT.war
ENTRYPOINT ["java","-jar","Dockerdemo-0.0.1-SNAPSHOT.war"]
