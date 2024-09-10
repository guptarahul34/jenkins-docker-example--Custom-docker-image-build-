FROM openjdk
RUN mkdir javadir
WORKDIR javadir
COPY target/*.jar javadir
EXPOSE 8080
ENTRYPOINT ["java","-jar","javadir/my-app-1.0-SNAPSHOT.jar"]
