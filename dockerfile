## Build spring app first and then build docker image
#FROM openjdk:17

#COPY target/* /opt/app

#EXPOSE 8092

#CMD ["java", "-jar", "/opt/app/demo-0.0.1-SNAPSHOT.jar"]


## Copy source code into docker, build the code and run the app
FROM maven:3.8.3-openjdk-17
WORKDIR /app
COPY . .
RUN mvn clean
RUN mvn install
#COPY ./target/* /opt/app

EXPOSE 8092

CMD ["java", "-jar", "/app/target/demo-0.0.1-SNAPSHOT.jar"]