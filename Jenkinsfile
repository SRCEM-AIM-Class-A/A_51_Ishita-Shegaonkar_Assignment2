pipeline {
    agent any

    environment {
        DOCKER_PATH = "C:/Program Files/Docker/Docker/resources/bin/docker.exe"
        IMAGE_NAME = "ishita1455/studentproject"
        IMAGE_TAG = "latest"
        DOCKER_HUB_USERNAME = "ishita1455"
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Checking out the source code..."
                git 'https://github.com/YOUR_GITHUB_USERNAME/YOUR_REPO.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker image..."
                bat "${DOCKER_PATH} build -t ${IMAGE_NAME}:${IMAGE_TAG} ."
            }
        }

        stage('Login to Docker Hub') {
            steps {
                echo "Logging into Docker Hub..."
                bat "echo YOUR_DOCKER_HUB_PASSWORD | ${DOCKER_PATH} login -u ${DOCKER_HUB_USERNAME} --password-stdin"
            }
        }

        stage('Push Docker Image') {
            steps {
                echo "Pushing image to Docker Hub..."
                bat "${DOCKER_PATH} push ${IMAGE_NAME}:${IMAGE_TAG}"
            }
        }
    }

    post {
        success {
            echo "Deployment successful! 🎉"
        }
        failure {
            echo "Build failed! ❌"
        }
    }
}
