#!/bin/bash
set -e

SPRING_PROFILES_ACTIVE=${SPRING_PROFILES_ACTIVE:-dev}

# Download artifact
curl -H "Accept: application/zip" -L ${ARTIFACT_URL} -o ${ARTIFACT_BINARIES}/spring-boot-app.jar

# Start spring boot application with specific JVM_ARGS and SPRING_PROFILE
exec java ${JVM_ARGS} -jar -Dspring.profiles.active=${SPRING_PROFILES_ACTIVE} ${ARTIFACT_BINARIES}/spring-boot-app.jar
