pipeline{
	agent any
	stages{
		stage('Timeout'){
			steps{
			 	retry(3){
					sh "echo hello world"
				}
			}
		
		}
	}
}
