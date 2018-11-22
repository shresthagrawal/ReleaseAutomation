pipeline {
    agent any
    stages {
        stage('Deploy') {
            steps{
               ansiblePlaybook disableHostKeyChecking: true, inventory: '/home/pippin/tmp/inventory.ini', playbook: '/home/pippin/tmp/setup.yml'  
            }
        }
    }    
}