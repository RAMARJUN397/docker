node{


 stage ('Setup') {
      steps {
        git branch: 'master', url: 'https://github.com/RAMARJUN397/docker.git'
      }
    }

    stage ('Compile') {
      steps {
        sh 'mvn compile'
      }
    }
        stage ('Test') {
      steps {
        sh 'mvn test'
      }
    }
    stage ('Build') {
      steps {
        sh 'mvn clean package'
      }
    }
  stage ('Delivery') {
      steps {
        deploy adapters: [tomcat9(credentialsId: 'TomcatCredentials', path: '', url: 'http://15.206.195.98:8080/')], contextPath: '/myar', war: '**/*.war'
      }
    }

}
