pipeline {
    agent any  // Run on any available Jenkins agent

    environment {
        DOCKER_IMAGE = "ishita1455/studentproject:latest"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/SRCEM-AIM-Class-A/A_51_Ishita-Shegaonkar_Assignment2.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ${DOCKER_IMAGE} .'
            }
        }

        stage('Login to Docker Hub') {
            steps {
                withCredentials([string(credentialsId: 'docker-hub-password', variable: 'DOCKER_PASSWORD')]) {
                    sh 'echo "$DOCKER_PASSWORD" | docker login -u "ishita1455" --password-stdin'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                sh 'docker push ${DOCKER_IMAGE}'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                docker stop studentproject || true
                docker rm studentproject || true
                docker run -d -p 8000:8000 --name studentproject ${DOCKER_IMAGE}
                '''
            }
        }
    }

    post {
        success {
            echo "✅ Deployment successful!"
        }
        failure {
            echo "❌ Deployment failed! Check the logs."
        }
    }
}
