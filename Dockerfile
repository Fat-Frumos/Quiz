FROM maven:3.8.4-jdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests -Dmaven

FROM openjdk:17-jdk-slim
COPY --from=build ./web-app/target/web-app-1.0.0.jar demo.jar
EXPOSE 8080 443
ENTRYPOINT ["java","-jar","demo.jar"]
