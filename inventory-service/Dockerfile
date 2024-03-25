FROM openjdk:17
WORKDIR /app
COPY ./target/inventory-service.jar .
EXPOSE 8085
CMD ["java", "-jar", "inventory-service.jar"]