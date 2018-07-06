node{
	stage('Checkout') {
	git branch: 'master', url: 'https://github.com/gerardduff/openwrt.git'
	}
	stage('Unit Tests'){
	//unit tests placeholder
	}
	stage('Build'){
	checkout scm
	sh 'sudo make V=s'
	}
	stage('Deploy'){
	//placeholder for deploy
	}
}
