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
    }
}