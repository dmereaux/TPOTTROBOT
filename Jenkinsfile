pipeline {
    agent any

    stages {
        stage('Prepare test environment') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'main', url: 'https://github.com/dmereaux/TPOTTROBOT.git'

                sh '''python3 -m venv .venv
                source .venv/bin/activate
                pip3 install robotframework
                pip3 install robotframework-seleniumlibrary'''
  
                // To run Maven on a Windows agent, use
                // bat 'mvn -Dmaven.test.failure.ignore=true clean package'
            }
        }
        stage('Launch IHM test') {
            steps {
                sh returnStatus: true, script: 'robot ./test/TPComplet.robot'
                // To run Maven on a Windows agent, use
                // bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }


            post {
                // If Maven was able to run the tests, even if some of the test
                // failed, record the test results and archive the jar file.
                always {
                    echo "ok"
                    robot archiveDirName: 'robot-plugin', outputPath: '.', overwriteXAxisLabel: '', passThreshold: 95.0, unstableThreshold: 90.0
                }                
            }
        }
    }
    post {
        always {

                // Clean up
                echo "delete docker image"
                sh 'docker stop tpottc && docker rm tpottc'
         }
      }
}
