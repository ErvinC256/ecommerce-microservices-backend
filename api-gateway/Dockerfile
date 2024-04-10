FROM openjdk:17
WORKDIR /app
COPY ./target/api-gateway.jar .
EXPOSE 8080
CMD ["java", "-jar", "api-gateway.jar"]