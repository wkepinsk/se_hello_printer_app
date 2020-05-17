pipeline {
    agent any
    stages {
        stage('Deps') {
            steps {
	            sh 'make deps'
        	}
        }
        stage('Linter'){
            steps{
            flake8 
            }
        }
       stage('Test'){
           steps{
              sh 'make test'
        }
    }
    }
}
