pipeline {
    agent {
      docker {
        image 'http://10.115.10.120:8082/alpine:hw11_buld'
      }
    }
    stages {
      stage('Get content'){
        steps {
          git 'https://github.com/PhantomMad/origin555.git'
          sh 'ls -la'
        }
      }
    }

}