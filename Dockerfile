# define base docker image
FROM openjdk:17
LABEL maintainer="pranay273"
ADD target/base-domains-0.0.1-SNAPSHOT.jar base-domains-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "base-domains-0.0.1-SNAPSHOT.jar"]
