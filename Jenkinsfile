pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/praskumar005/Docker_Task1.git'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t nginx_image1 .'
            }
        }

        stage('Docker Run') {
            steps {
                sh '''
                docker rm -f app1 || true
                docker run -d --name app1 -p 9090:80 nginx_image1
                '''
            }
        }

    }
}

