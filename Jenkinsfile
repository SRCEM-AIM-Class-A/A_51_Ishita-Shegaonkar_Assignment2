pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/SRCEM-AIM-Class-A/A_51_Ishita-Shegaonkar_Assignment2.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ishita1455/studentproject .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-credentials', url: '']) {
                    sh 'docker push ishita1455/studentproject:latest'
                }
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                docker stop studentproject || true
                docker rm studentproject || true
                docker run -d -p 8000:8000 --name studentproject ishita1455/studentproject:latest
                '''
            }
        }
    }
}
