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
          git 'https://github.com/PhantomMad/origin555.git'
          sh 'ssh-keyscan -H 1 >> ~/.ssh/known_hosts'
          sh 'scp jenkins@devbuild-srv01:/home/jenkins/build/configs/staging/gateway-api/application-business-config-defaults.yml
          sh 'ls /var/lib/docker/hw11/git'
        }
      }
    }

}