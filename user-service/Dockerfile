FROM openjdk:17
WORKDIR /app
COPY ./target/user-service.jar .
EXPOSE 8081
CMD ["java", "-jar", "user-service.jar"]