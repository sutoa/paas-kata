FROM java:8
VOLUME /tmp
VOLUME /target
ENV JAVA_OPTS -Dspring.profiles.active=docker
ADD build/libs/simple-web-service-0.0.1.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java", "-jar", "/app.jar"]
