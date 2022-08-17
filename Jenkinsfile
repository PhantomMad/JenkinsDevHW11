pipeline {
    agent {
      docker {
        image '10.115.10.120:8082/alpine:hw11_build'
        args '-v /var/lib/docker/jenkins/workspace/HW11/git:/docker/hw11/git'
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
        sh 'mvn -f package'
       }
      }
//      stage('Copy and run'){
//       steps {
//        sh '''docker build -t 10.115.10.120:8082/alpine:hw11_prod .'''
//       }
//      }
    }

}