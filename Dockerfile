FROM openjdk:21-jdk-slim
RUN apt-get update && apt-get install -y maven
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests
EXPOSE 8088
ENTRYPOINT ["java", "-jar", "target/FeedbackService.jar"]