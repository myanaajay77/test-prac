pipeline {
    agent any
    stages {
        stage('Building Docker Image') {
                steps {
                    script {
                    //checkout scm
                    withDockerRegistry([credentialsId:'DockerCreds', url: 'https://hub.docker.com/'])
                    docker.build("ajaykumar77/learnings77:${env.BUILD_ID}")
                    docker.image("ajaykumar77/learnings77:${env.BUILD_ID}").push()
                }
            }
        }
    }
}
