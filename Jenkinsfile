pipeline {
    agent any
    stages {
        stage('Deps') {
            steps {
	            sh 'make deps'

        	}
        }
    stages('Test'){
        steps{
              sh 'make test'
        }
    }
    }
}
