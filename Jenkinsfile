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
            agent{
                image 'docker'
                reuseNode true  
            }
            steps{
                sh "docker build -t rahulgupta9794/maven:$BUILD_NUMBER ."
            }
        }
    }
}