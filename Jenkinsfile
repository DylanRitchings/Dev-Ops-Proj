pipeline {
  agent any
  environment{
      DB_URI=credentials('DATABASE_URI')
      TEST_DB_URI=credentials('TEST_DATABASE_URI')
      DOCKER_USER=credentials('DOCKER_USER')
      DOCKER_PASSWORD=credentials('DOCKER_PASSWORD')
      VM_KEY=credentials('VM_KEY')
      AWS_ACCESS_KEY=credentials('AWS_ACCESS_KEY')
      AWS_SECRET_KEY=credentials('AWS_SECRET_KEY')
  }