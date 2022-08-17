pipeline {
    agent {
      docker {
        image '10.115.10.120:8082/alpine:hw11_buld'
      }
    }
    stages {
      stage('Get content'){
        steps {
          sh 'cd /var/lib/docker/hw11/git'
          git 'https://github.com/PhantomMad/JenkinsDevHW11.git'
        }
      }
    }

}