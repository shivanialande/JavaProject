pipeline{
 agent any
  stages{
   stage('Git Checkout'){
    steps{
      git credentialsId: 'github' , url: 'https://github.com/shivanialande/JavaProject.git'
    }
   }
   stage('Maven Build'){
    steps{
      sh 'mvn clean package'
    }
   }
  stage('Test'){
   steps{
     sh 'mvn test'
   }
  }
  stage('Building of Docker Image'){
   steps{
     sh 'docker build -t javaproject:1.0 /home/ubuntu/JavaProject'
   }
  }
  stage('Deployment'){
   steps{
     sh 'docker run -p 8090:8090 --name Hotel_Management_Application -d javaproject:1.0'
 }
}
}
}
  
