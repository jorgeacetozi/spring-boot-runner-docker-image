# Spring Boot Runner Docker Image

Very handy Docker image for running Spring Boot applications. Main features:

- Run a generic jar artifact. Just provide the `ARTIFACT_URL` for the application jar web location
- Run specifics Spring Profiles providing the `SPRING_PROFILES_ACTIVE` environment variable. Thus, you might reuse the same image to run the same application with different Spring Profiles
- Tuning JVM arguments providing the `JVM_ARGS` environment variable
- Mounting external volumes for logs

## Usage Examples

### Simple Usage

```shell
$ docker run -p 8080:8080 -e ARTIFACT_URL="http://example.com/your-artifact.jar" jorgeacetozi/spring-boot-runner:1.0
```

### Passing JVM arguments

```shell
$ docker run -p 8080:8080 -e ARTIFACT_URL="http://example.com/your-artifact.jar" -e JVM_ARGS="-Xms1G -Xmx1G" jorgeacetozi/spring-boot-runner:1.0
```

### Externalizing logs

```shell
$ docker run -p 8080:8080 -e ARTIFACT_URL="http://example.com/your-artifact.jar" -e JVM_ARGS="-Xms1G -Xmx1G" -v /var/log/myapp:/var/log/spring-boot-app jorgeacetozi/spring-boot-runner:1.0
```

### Setting specific Spring Profiles

```shell
$ docker run -p 8080:8080 -e ARTIFACT_URL="http://example.com/your-artifact.jar" -e JVM_ARGS="-Xms1G -Xmx1G" -v /var/log/myapp:/var/log/spring-boot-app -e SPRING_PROFILES_ACTIVE="production" jorgeacetozi/spring-boot-runner:1.0
```
