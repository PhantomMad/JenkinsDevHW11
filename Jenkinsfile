pipeline {
    agent {
      docker {
        image '10.115.10.120:8082/alpine:hw11_buld'
      }
    }
    stages {
      stage('Get content'){
        steps {
          sh 'ls -la /home'
        }
      }
    }

}