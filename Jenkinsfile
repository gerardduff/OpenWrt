node{
	stage('Checkout') {
	git branch: 'master', url: 'https://github.com/gerardduff/openwrt.git'
	}
	stage('Build'){
	checkout scm
	sh 'Make'
	}
}
