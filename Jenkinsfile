pipeline {
  agent any
  stages {
    stage('Clean Workspace') {
      steps {
        deleteDir()
      }
    }
    stage('Checkout SCM') {
      steps {
        git branch: 'main', url: 'https://github.com/claudemoz/Projet-dev-01.git'
      }
    }
    stage('Build Docker Image') {
      steps {
        script {
          sh 'docker build -t myimage_nginx .'
          sh 'docker tag myimage_nginx med:myimage_nginx'
        }
      }
    }
    stage('Deploy Container') {
      steps {
        script {
          sh '''
          if [ "$(docker ps -aq)" ]; then
            docker rm -f $(docker ps -aq)
          fi
          docker run -d --name monapp --hostname monapp -p 8099:80 myimage_nginx
          docker exec -it -d monapp "ifconfig"
          '''
        }
      }
    }
  }
}
