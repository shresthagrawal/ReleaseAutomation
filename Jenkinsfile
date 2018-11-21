pipeline {
    agent any
    stages {
        stage('Deploy') {
            steps{
               ansiblePlaybook credentialsId: 'ball', inventory: '/home/pippin/tmp/inventory.ini', playbook: '/home/pippin/tmp/main.yml'  
            }
        }
    }    
}