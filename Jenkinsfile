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
  stage('Building of Docker Image'){
   steps{
     sh 'docker build -t JavaProject:1.0 .'
   }
  } 
 }
}
  
