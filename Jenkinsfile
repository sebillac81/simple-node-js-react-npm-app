pipeline {
    agent none
    environment {
        CI = 'true' 
    }
    stages {
        stage('Build') {
            agent {
                label 'node'
                docker {
                    image 'node:6-alpine' 
                    args '-p 3000:3000' 
                }
            }
            steps {
                sh 'npm install' 
            }
        }
        stage('Test') { 
            agent {
                label 'node'
                docker {
                    image 'node:6-alpine' 
                    args '-p 3000:3000' 
                }
            }
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
