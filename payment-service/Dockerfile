FROM openjdk:17
WORKDIR /app
COPY ./target/payment-service.jar .
EXPOSE 8086
CMD ["java", "-jar", "payment-service.jar"]