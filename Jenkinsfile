pipeline {
    agent {
        docker {
            image 'ubuntu:18.04'
            customWorkspace 'env'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'uname -a'
                sh 'pwd'
            }
        }
        stage('Run') {
            steps {
                sh 'bash env-setup.sh'
            }
        }
	}
}