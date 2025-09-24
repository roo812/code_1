#FROM openjdk:17-jdk-slim
# With AWS ECR Public version instead of from docker hub
FROM public.ecr.aws/docker/library/openjdk:17-jdk-slim
WORKDIR /app
COPY target/demo-1.0.0.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar", "--server.port=8080"]
