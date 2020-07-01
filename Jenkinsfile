pipeline {
        agent {
            label "master"
        }
        environment {
            NX_URL="http://192.168.101.10:8081"
            repo=""
            json=""
            def arti=""
        }
        stages{
        /*    stage('Clone'){
                steps{
                    deleteDir();
                    git branch: 'development', credentialsId: '40066fa1-1e76-4a8d-b251-130712d3a834', url: 'https://github.com/rahuldasdevops/node-native-metrics.git'
                }
                
            }
            stage('Build') {
                steps{
                    sh label: '', script: '''cp /opt/jenkins/workspace/scripts/.npmrc "${WORKSPACE}"
                        npm install
                        npm run build
                        npm pack
                        '''
                }
            }*/
        /*    stage('Test') {
                steps{
                    sh label: '', script: ''' npm test
                          npm pack
                          '''
                }
            } */
            stage('upload artifact') {
                steps{
                   
                    script{
                        json = readJSON file: 'package.json', text: ''
                        repo="${json.repoName}"
                       // arti="${json.name}"-"${json.version}"
                        echo "${json.repoName}"
                        echo "$repo"
                        
                         arti=sh (script:'''a=$(find . -name "*.tgz" -print) 
                       echo $a''',returnStdout:true).trim()
                        echo "$arti"
                        sh "./nx $NX_URL $repo $arti"
                    }
                   
                }
            }
        }
    }
