FROM openjdk:17
WORKDIR /app
COPY ./target/product-service.jar .
EXPOSE 8082
CMD ["java", "-jar", "product-service.jar"]