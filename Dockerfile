FROM openjdk:8-jre-alpine
WORKDIR /app
ADD . /app
CMD java -jar /var/lib/jenkins/workspace/ArtifactsDeployToServer/target/JavaArtifact-1.0.0.jar
