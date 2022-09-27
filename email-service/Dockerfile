# define base docker image
FROM openjdk:17
LABEL maintainer="pranay273"
ADD target/email-service-0.0.1-SNAPSHOT.jar email-service-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "springboot-docker.jar"]
