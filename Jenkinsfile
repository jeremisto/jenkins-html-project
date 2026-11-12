pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo '===== CHECKOUT STAGE ====='
                echo 'Source code checked out from GitHub'
            }
        }

        stage('Build') {
            steps {
                echo '===== BUILD STAGE ====='
                echo 'Preparing HTML website'
                bat 'dir'
            }
        }

        stage('Docker Build') {
            steps {
                echo '===== DOCKER BUILD STAGE ====='
                bat 'docker version'
                bat 'docker build -t html-website .'
            }
        }

        stage('Deploy') {
            steps {
                echo '===== DEPLOY STAGE ====='
                bat 'docker rm -f html-website 2>NUL || exit /b 0'
                bat 'docker run -d --name html-website -p 8081:80 html-website'
                echo 'Website deployed successfully!'
            }
        }
    }
}
