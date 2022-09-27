# define base docker image
FROM openjdk:11
LABEL maintainer="pranay273"
ADD target/stock-service-0.0.1-SNAPSHOT.jar stock-service-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "stock-service-0.0.1-SNAPSHOT.jar"]
