pipeline {
    agent any
    stages {
        stage('Deploy') {
            steps{
               ansiblePlaybook '/home/pippin/tmp/main.yml'  
            }
        }
    }    
}