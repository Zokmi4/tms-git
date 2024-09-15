pipeline {
    agent any
    
    parameters {
        string(name: "string_param", defaultValue: "hello", description: "Enter string")
        string(name: "req")
    }
    
    stages {
        stage("Build") {
            steps {
                echo "${params.string_param}!!!!!!!!!!!!!!!!!!!"
            }
        }
    }
}
