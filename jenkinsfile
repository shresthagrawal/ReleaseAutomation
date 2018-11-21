pipeline {
    agent any
    stages {
        stage('Deploy') {
            steps{
               ansiblePlaybook '/main.yml'  
            }
        }
    }    
}