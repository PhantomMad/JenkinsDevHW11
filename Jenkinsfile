pipeline {
    agent {
      docker {
        image '10.115.10.120:8082/alpine:hw11_buld'
      }
    }
    stages {
      stage('Get content'){
        steps {
          script {
            if(env.t_link != ""){
              sh 'wget -O tomcat.tar.gz https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.23/bin/apache-tomcat-10.0.23.tar.gz'
            }
          }
          sh 'cd /var/lib/docker/hw11/git'
          git 'https://github.com/PhantomMad/JenkinsDevHW11.git'
        }
      }
    }

}