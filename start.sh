#!/bin/bash
set -e

SPRING_PROFILES_ACTIVE=${SPRING_PROFILES_ACTIVE:-dev}

# Download artifact
wget ${ARTIFACT_URL} -O ${ARTIFACT_BINARIES}/spring-boot-app.jar

# Start spring boot application with specific JVM_ARGS and SPRING_PROFILE
java ${JVM_ARGS} -jar -Dspring.profiles.active=${SPRING_PROFILES_ACTIVE} ${ARTIFACT_BINARIES}/spring-boot-app.jar
