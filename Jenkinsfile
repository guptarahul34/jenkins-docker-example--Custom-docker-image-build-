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
                    sh 'echo $dockerhub_PASSWORD | docker login -u $dockerhub_ID --password-stdin'
                    // sh "echo $dockerhub"
                }
                withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', passwordVariable: 'token', usernameVariable: 'Dockerhub')]) {
                    sh 'echo $token | docker login -u $Dockerhub --password-stdin'
                }
            }
        }
    }
}
