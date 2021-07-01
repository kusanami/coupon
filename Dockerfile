FROM openjdk:11.0.11-jdk-slim-buster
RUN addgroup -S coupon && adduser -S coupon -G coupon
USER coupon:coupon
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]