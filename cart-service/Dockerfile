FROM openjdk:17
WORKDIR /app
COPY ./target/cart-service.jar .
EXPOSE 8083
CMD ["java", "-jar", "cart-service.jar"]