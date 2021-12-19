FROM openjdk:11
MAINTAINER "ARJUN"
EXPOSE 6060
ADD   target/Dockerdemo.war Dockerdemo.war
ENTRYPOINT ["java","-jar","Dockerdemo.war"]
