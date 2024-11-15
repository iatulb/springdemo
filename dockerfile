FROM openjdk:17

COPY target/* /opt/app

EXPOSE 8092

CMD ["java", "-jar", "/opt/app/demo-0.0.1-SNAPSHOT.jar"]