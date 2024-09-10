pipeline{
    agent any

    tools {
        maven 'MAVEN'
    }

    environment {
        DOCKERHUB=credentials('dockerhub-credentials')
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
                    sh '''
                        echo $DOCKERHUB_PSW | docker login -u $DOCKERHUB_USR --password-stdin
                        docker push rahulgupta9794/maven:$BUILD_NUMBER
                    '''
            }
        }
    }
}
