pipeline {
    agent any
    stages {
        stage('Building Docker Image') {
            script {
                steps {
                    //checkout scm
                    docker.build("ajaykumar77/learnings77:${env.BUILD_ID}")
                //customImage.push()
                }
            }
        }
    }
}
