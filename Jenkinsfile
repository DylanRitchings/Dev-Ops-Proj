pipeline {
  agent any
  environment{
      DATABASE_URI='mysql+pymysql://root:password@prod.cyjzk1rwhp13.eu-west-2.rds.amazonaws.com/testdb'
      TEST_DATABASE_URI='mysql+pymysql://root:password@test.cyjzk1rwhp13.eu-west-2.rds.amazonaws.com/testdb'
      DOCKER_USER=credentials('DOCKER_USER')
      DOCKER_PASSWORD=credentials('DOCKER_PASSWORD')
      VM_KEY=credentials('VM_KEY')
      AWS_ACCESS_KEY=credentials('AWS_ACCESS_KEY')
      AWS_SECRET_KEY=credentials('AWS_SECRET_KEY')
      DATABASE_SECRET_KEY='jksdfl9weir90238908f09sdf8hfds'
      DATABASE_USER=credentials('DATABASE_USER')
      DATABASE_PASSWORD=credentials('DATABASE_PASSWORD')
  }

  stages {
//      stage("Setup database"){
//      }
     stage("Create and run test images"){
        steps {
            sh "chmod u+xr,go-rwx ~/.ssh"
            sh "chmod a+x jenkins_scripts/run_tests.sh"
            sh "jenkins_scripts/run_tests.sh"
        }
     }


//
//      stage("Configure test RDS"){
//          steps {
//             }
//      }
//      stage("Run tests"){
//          steps {
//             }
//      }
//      stage("Upload to dockerhub"){
//          steps {
//             }
//      }
//
//      stage("Deploy with kubernetes"){
//          steps {
//             }
//      }
//   }
  }
}