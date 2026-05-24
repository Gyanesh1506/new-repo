pipeline {
    agent any
    stages {
      stage('Deploy New Tomcat Container') {
            steps {
                script {
                    // 1. Build the image (using the Docker socket to talk to host)
                    sh "docker build -t my-app-tomcat:${env.BUILD_NUMBER} ."
                    
                    // 2. Remove old container (ignore error if it doesn't exist)
                    sh 'docker rm -f my-tomcat-prod || true'
                    
                    // 3. Run new container
                    // -d: detached mode, -p: map host 8081 to container 8080
                    sh "docker run -d --name my-tomcat-prod -p 8081:8080 my-app-tomcat:${env.BUILD_NUMBER}"
                }
            }
        }
    }
