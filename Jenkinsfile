@Library('pipeline-library') _

pipeline {
  agent { label 'docker' }
  stages {
    stage('Build Dev Container') {
      // all branches
      steps {
        sh "cd cnx && docker build -t openstax/cnx-varnish:dev ."
        sh "cd legacy-cnx && docker build -t openstax/legacy-cnx-varnish:dev ."
      }
    }
    stage('Publish Latest Release') {
      when {
        anyOf {
          branch 'master'
          buildingTag()
        }
      }
      steps {
        withDockerRegistry([credentialsId: 'docker-registry', url: '']) {
          sh "docker tag openstax/cnx-varnish:dev openstax/cnx-varnish:latest"
          sh "docker push openstax/cnx-varnish:latest"
          sh "docker tag openstax/legacy-cnx-varnish:dev openstax/legacy-cnx-varnish:latest"
          sh "docker push openstax/legacy-cnx-varnish:latest"
        }
      }
    }
    stage('Publish Version Release') {
      when { buildingTag() }
      environment {
          release = meta.version()
      }
      steps {
        withDockerRegistry([credentialsId: 'docker-registry', url: '']) {
          sh "docker tag openstax/cnx-varnish:dev openstax/cnx-varnish:${release}"
          sh "docker push openstax/cnx-varnish:${release}"
          sh "docker tag openstax/legacy-cnx-varnish:dev openstax/legacy-cnx-varnish:${release}"
          sh "docker push openstax/legacy-cnx-varnish:${release}"
        }
      }
    }
  }
}
