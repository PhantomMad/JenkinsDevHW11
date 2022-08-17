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
          sh 'wget -O tomcat.tar.gz https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz'
          git 'https://github.com/boxfuse/boxfuse-sample-java-war-hello.git'
          sh 'ssh-keyscan -H 10.115.10.120 >> ~/.ssh/known_hosts'
        }
      }
//      stage('Build project'){
//       steps {
///        sh 'mvn -f package'
//       }
//      }
//      stage('Copy and run'){
//       steps {
//        sh '''docker build -t 10.115.10.120:8082/alpine:hw11_prod .'''
//       }
//      }
    }

}