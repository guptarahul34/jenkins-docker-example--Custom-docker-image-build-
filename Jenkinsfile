pipeline{
    agent any

    tools {
        maven 'MAVEN'
    }

    stages{
        stage('Build Maven Project'){
            steps{
                sh 'mvn clean package -Dmaven.clean.skip=true'
            }
        }

        stage('Build Docker Image'){
            steps{
                sh "docker build -t rahulgupta9794/maven:$BUILD_NUMBER ."
            }
        }

        stage('Push Image DockerHub'){
            steps{
                withCredentials([usernameColonPassword(credentialsId: 'dockerhub-credentials', variable: 'dockerhub')]) {
                    // sh 'docker login '
                    sh "echo $dockerhub"
                }
            }
        }
    }
}
