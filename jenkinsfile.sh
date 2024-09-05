pipeline{
	agent any
	stages{
		stage('timeout'){
			retry(3)
			sh echo "Hello World"
		
		}
	}
}
