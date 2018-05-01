pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'sh "pwd"'
      }
    }
    stage('test') {
      steps {
        sh 'sh "pwd"'
      }
    }
    stage('archive') {
      steps {
        junit 'results'
      }
    }
  }
}