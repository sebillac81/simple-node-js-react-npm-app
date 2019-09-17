pipeline {
    agent {
        docker {
            image 'node:6-alpine' 
            args '-p 3000:3000' 
        }
    }
    environment {
        CI = 'true' 
    }
    stages {
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }
        stage('Test') { 
            steps {
                sh './jenkins/scripts/test.sh' 
            }
        }
        stage('Deliver') {
            agent {
                docker { image 'ansible:ubuntu1604' }
            }
            steps {
                sh './infraestructura/provision.sh inventory.demo1'
            }
        }
    }
}
