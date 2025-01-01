pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('d4a584a7-3b94-49e4-af1c-c5351eb9fd61')
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Esraawael99/Adv_SW.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('sort-array-image', '.')
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', DOCKERHUB_CREDENTIALS) {
                        docker.image('sort-array-image').push('latest')
                    }
                }
            }
        }
    }
}
