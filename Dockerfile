## Use an official JDK image
#FROM eclipse-temurin:17-jdk
#
## Set working directory
#WORKDIR /app
#
## Copy Maven wrapper and pom.xml
#COPY mvnw .
#COPY .mvn .mvn
#COPY pom.xml .
#
## Download dependencies (cached)
#RUN ./mvnw dependency:go-offline
#
## Copy the rest of the app
#COPY src ./src
#
## Build the project
#RUN ./mvnw clean package -DskipTests
#
## Expose port
#EXPOSE 8080
#
## Set default profile to prod (can override if needed)
#ENV SPRING_PROFILES_ACTIVE=prod
#
## Run the jar
#CMD ["java", "-jar", "target/your-app-name-0.0.1-SNAPSHOT.jar"]
