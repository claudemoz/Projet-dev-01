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
              sh 'docker build -t mynginx .'
              sh 'docker tag mynginx med:mynginx'          }
            }
          }
      }
 }
