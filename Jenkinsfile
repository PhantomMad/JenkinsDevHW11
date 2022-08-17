pipeline {
    agent {
      docker {
        image '10.115.10.120:8082/alpine:hw11_build'
      }
    }
    stages {
      stage('Get content'){
        steps {
          sh 'cd /docker/hw11/git'
          git 'https://github.com/PhantomMad/origin555.git'
          sh 'whoami && pwd'
        }
      }
    }

}