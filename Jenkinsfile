pipeline {
    agent {
      docker {
        image '10.115.10.120:8082/alpine:hw11_build'
        args '-v /var/lib/docker/jenkins/workspace/HW11/project:/docker/project'
      }
    }
    environment {
      localhub=credentials('Reg-Docker-Manager')
    }
    stages {
      stage('Get content'){
        steps {
          git 'https://github.com/boxfuse/boxfuse-sample-java-war-hello.git'
        }
      }
      stage('Nexus publish'){
        steps {
          nexusPublisher nexusInstanceId: '3.0', nexusRepositoryId: 'maven-snapshots', packages: [[$class: 'MavenPackage', mavenAssetList: [], mavenCoordinate: [artifactId: 'hello', groupId: 'com.boxfuse.samples', packaging: 'war', version: '1.0']]]
        }
      }
      stage('Build project'){
       steps {
        sh 'mvn package'
       }
      }
      stage('Build prod image'){
        steps {
         sh 'echo $localhub_PSW | docker login -u $localhub_USR --password-stdin 10.115.10.120:8082'
         sh 'cd /docker && docker build -t 10.115.10.120:8082/alpine:hw11_prod . && docker push 10.115.10.120:8082/alpine:hw11_prod'
        }
      }
      stage('Clear images'){
       steps {
        sh 'docker image rmi 10.115.10.120:8082/alpine:hw11_build -f'
        sh 'docker image rmi 10.115.10.120:8082/alpine:hw11_prod'
        sh 'docker image rmi 10.115.10.120:8082/alpine:local'
       }
      }
    }
}