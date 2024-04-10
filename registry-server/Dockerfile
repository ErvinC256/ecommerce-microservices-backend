FROM openjdk:17
WORKDIR /app
COPY ./target/registry-server.jar .
EXPOSE 8761
CMD ["java", "-jar", "registry-server.jar"]