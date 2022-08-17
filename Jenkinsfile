pipeline {
    agent any
    tools{
        maven "m3"
    }
    stages{
        stage('git'){
            steps {
                git 'https://github.com/PhantomMad/origin555.git'
            }

        }
        stage('build'){
            steps {
                sh 'mvn package'
            }
        }
        stage('deploy'){
            steps{
                deploy adapters: [tomcat9(credentialsId: '11257b41-4d19-4d0b-b74d-f95b34dcb289', path: '', url: 'http://10.115.10.123:8080')], contextPath: 'mywebapp2', war: '**/*.war'
            }
        }
    }
}