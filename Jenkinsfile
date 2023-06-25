pipeline {
    agent any
    stages {
        stage('Building Docker Image') {
            //checkout scm
            docker.build("ajaykumar77/learnings77:${env.BUILD_ID}")
            //customImage.push()
        }
    }
}
