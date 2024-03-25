FROM openjdk:17
WORKDIR /app
COPY ./target/order-service.jar .
EXPOSE 8084
CMD ["java", "-jar", "order-service.jar"]