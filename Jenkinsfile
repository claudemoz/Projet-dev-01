pipeline {
    agent any
     stages {
        stage('clean workspace') {
           steps {
            deleteDir()
           }
        }
       stage('Checkout SCM') {
         steps {
            git branch: 'main', url: 'https://github.com/claudemoz/Projet-dev-01.git'
        }
       }
        stage('build image docker') {
         steps {
            script {
              sh 'docker build -t myimage_nginx .'
              sh 'docker tag mynginx med:myimage_nginx'          }
            }
          }
        }
    
        stage('deploy container') {
         steps {
            script {
              sh 'docker image rm  myimage_nginx .'
              sh 'docker rm -f $(docker ps -a)'
              sh 'docker run -d --name monapp --hostname monapp -p 8099:80 myimage_nginx'          }
            }
        }
      }
    }
}
