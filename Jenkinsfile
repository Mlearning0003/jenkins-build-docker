node{
  def app
  stage('Clone') {
    checkout scm
  }
  stage('Build Image'){
    app = docker.build("morad/nginx")
  }
  stage('Run image') {
    docker.image('morad/nginx').withRun('-p 80:80') { c ->
      sh 'docker ps'
      sh 'curl localhost'
  }
}
