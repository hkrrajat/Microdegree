pipeline{
	agent any
	stages{
		stage('timeout'){
			steps{
				retry(3)
				sh echo "Hello World"
				
			}
		
		}
	}
}
