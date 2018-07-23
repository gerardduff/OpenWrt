node{
	stage('Checkout') {
	git branch: 'master', url: 'https://github.com/gerardduff/openwrt.git'
	}
	stage('Unit Tests'){
	//unit tests placeholder
	sh './unittests.sh'
	}
	stage('Make'){
	checkout scm
	sh 'sudo make V=s'
	}
	stage('Build binary'){
	sh './buildBinary.sh'
	}
	stage('Deploy'){
	//placeholder for deploy
	}
}
