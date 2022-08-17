pipeline {
    agent {
      docker {
        image '10.115.10.120:8082/alpine:hw11_build'
        args '-v /var/lib/docker/jenkins/workspace/HW11/project:/docker/hw11/project'
      }
    }
    stages {
      stage('Get content'){
        steps {
          git 'https://github.com/boxfuse/boxfuse-sample-java-war-hello.git'
        }
      }
      stage('Build project'){
       steps {
        sh 'mvn package'
       }
      }
      stage('Copy and run'){
       steps {
        sh 'cp ./target/*.*ar ./project'
        sh 'cat /docker/Dockerfile'
       }
      }
    }

}