pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Source code checked out from GitHub'
            }
        }

        stage('Build') {
            steps {
                echo 'Preparing HTML website'
                bat 'dir'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t html-website .'
            }
        }

        stage('Deploy') {
            steps {
                bat 'docker rm -f html-website || exit /b 0'
                bat 'docker run -d --name html-website -p 8081:80 html-website'
                echo 'Website deployed successfully!'
            }
        }
    }
}
