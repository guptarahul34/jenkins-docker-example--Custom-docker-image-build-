pipeline{
    agent any

    tools {
        maven 'MAVEN'
        dockerTool 'myDocker' -v /var/run/docker.sock:/var/run/docker.sock \
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
    }
}
