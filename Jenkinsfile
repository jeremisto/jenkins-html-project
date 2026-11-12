pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out source code'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building HTML website'
                bat 'dir'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image'
                bat 'docker build -t html-website .'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying website'

                bat 'docker rm -f html-website 2>NUL || exit /b 0'

                bat 'docker run -d --name html-website -p 8081:80 Jenkins'

                echo 'Website deployed successfully!'
            }
        }
    }
}
