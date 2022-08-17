pipeline {
    agent {
      docker {
        image '10.115.10.120:8082/alpine:hw11_build'
        args '-v jenkins/workspace/HW11:/docker/hw11/git'
      }
    }
    stages {
      stage('Get content'){
        steps {
          sh 'cd /docker/hw11/git'
          git 'https://github.com/boxfuse/boxfuse-sample-java-war-hello.git'
        }
      }
    }

}