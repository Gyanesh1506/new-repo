pipeline {
    agent any
    stages {
      stage('Deploy New Tomcat Container') {
            steps {
	         script {
                    // 1. Build the image
                    sh "docker build -t my-app-tomcat:${env.BUILD_NUMBER} ."
                    
                    // 2. Stop and remove the container if it exists
                    // We use 'docker ps -q' to check for the container first
                    sh '''
                    if [ $(docker ps -aq -f name=my-tomcat-prod) ]; then
                        docker stop my-tomcat-prod || true
                        docker rm my-tomcat-prod
			sleep 2
                    fi
                    '''
                    
                    // 3. Run new container
                    sh "docker run -d --name my-tomcat-prod -p 8081:8080 my-app-tomcat:${env.BUILD_NUMBER}"
                }
            }
        }
    }
 }

