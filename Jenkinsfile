pipeline {
    agent { 
	docker { 
	    image 'ubuntu:18.04'
	} 
}
    stages {
        stage('Build') {
            steps {
                sh 'uname -a'
            }
        }
	stage('Run') {
	    steps {
		bash env-setup.sh
	    }
	}
	stage('Test') {
	    steps {
		which zsh
	    }
	}
    }
}
