pipeline {
    agent {
      docker {
        image 'http://10.115.10.120:8081/alpine:hw11_buld'
      }
    }
    stages {
      stage('Get content'){
        git 'https://github.com/PhantomMad/origin555.git'
        sh 'ls -la'
      }
    }

}