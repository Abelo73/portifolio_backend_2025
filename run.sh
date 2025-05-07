#!/bin/bash
set -a
source .env   # Loads the environment variables from the .env file
set +a
# Ensure the production profile is active
export SPRING_PROFILES_ACTIVE=prod
./mvnw spring-boot:run   # Runs the Spring Boot application
