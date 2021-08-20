FROM openjdk:16-alpine3.13

WORKDIR /app

#COPY .mvn/ .mvn
COPY mvnw mvnw.cmd pom.xml ./
#RUN ./mvnw dependency:go-offline
#RUN mvn package
COPY src ./src
COPY target/springboot-thymeleaf-crud-web-app-0.0.1-SNAPSHOT.jar /app

CMD ["java","-jar", "springboot-thymeleaf-crud-web-app-0.0.1-SNAPSHOT.jar"]
