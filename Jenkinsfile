pipeline {
    agent {
      docker {
        image '10.115.10.120:8082/alpine:hw11_build'
        args '-u 0 -v /var/lib/docker/jenkins/workspace/HW11:/docker/hw11/git'
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
        sh 'mvn -f /docker/hw11/git package'
       }
      }
      stage('Copy and run'){
       steps {
        sh 'mkdir /docker/hw11/project && mv target/*.*ar /docker/hw11/project/'
        sh '''docker build -t 10.115.10.120:8082/alpine:hw11_prod .'''
       }
      }
    }

}