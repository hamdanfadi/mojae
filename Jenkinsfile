// https://www.jenkins.io/doc/book/pipeline/
// https://www.jenkins.io/doc/book/pipeline/syntax/
// https://developer.hashicorp.com/terraform/cli/commands/init
// https://developer.hashicorp.com/terraform/cli/commands/apply
// https://developer.hashicorp.com/terraform/cli/commands/destroy

pipeline {
    agent any

    parameters {
        choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Choose Terraform action')
        choice(name: 'ENVIRONMENT', choices: ['dev', 'qa', 'staging', 'prod'], description: 'Choose environment')
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    // Checkout the repository
                    checkout scm

                    // Navigate to the appropriate environment directory
                    dir("IaC/environments/${params.ENVIRONMENT}") {
                        echo "Changed directory to IaC/environments/${params.ENVIRONMENT}"
                    }
                }
            }
        }

        stage('Terraform') {
            steps {
                script {
                    // Run Terraform based on the chosen action
                    if (params.ACTION == 'apply') {
                        sh 'terraform init'
                        sh 'terraform apply -auto-approve'
                    } else if (params.ACTION == 'destroy') {
                        sh 'terraform init'
                        sh 'terraform destroy -auto-approve'
                    }
                }
            }
        }
    }
}
