FROM openjdk:8
CMD java -jar /var/lib/jenkins/workspace/ArtifactsDeployToServer/target/JavaArtifact-1.0.0.jar
RUN mkdir /app
COPY /var/lib/jenkins/workspace/ArtifactsDeployToServer/target/JavaArtifact-1.0.0.jar /app/app.jar

