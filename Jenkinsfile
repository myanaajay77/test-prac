pipeline {
    agent any
    stages {
        stage('Building Docker Image') {
                steps {
                    script {
                    //checkout scm
                    docker.build("ajaykumar77/learnings77:${env.BUILD_ID}")
                }
            }
        }
        stage('Push Docker image to HUB') {
            steps {
                script {
                    withDockerRegistry([url:'https://hub.docker.com/repository/docker/ajaykumar77/learnings77/general',
                    credentialsId:'DockerCreds'])
                    docker.image("ajaykumar77/learnings77:${env.BUILD_ID}").push()
                }
            }
        }
    }
}
