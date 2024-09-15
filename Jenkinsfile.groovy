pipeline {
    agent any

    environment {
        // Определение переменных окружения
        REPO_URL = 'https://github.com/Zokmi4/tms-git/tree/lesson32/jenkins-test'
        APP_NAME = 'your-app'
        DOCKER_IMAGE = 'Dockerfile'
        DOCKER_TAG = 'latest'
        DOCKER_CONTAINER = 'your-app-container'
        DOCKER_PORT = '8080'
        SERVER_URL = 'http://localhost:8080'
    }

    stages {
        stage('Клонирование репозитория') {
            steps {
                script {
                    try {
                        echo 'Клонирование репозитория...'
                        git url: "${REPO_URL}"
                    } catch (Exception e) {
                        error "Не удалось клонировать репозиторий: ${e.message}"
                    }
                }
            }
        }

        stage('Сборка приложения') {
            steps {
                script {
                    try {
                        echo 'Сборка приложения с помощью Gradle...'
                        sh './gradlew clean build'
                    } catch (Exception e) {
                        error "Сборка не удалась: ${e.message}"
                    }
                }
            }
        }

        stage('Создание Docker-образа') {
            steps {
                script {
                    try {
                        echo 'Создание Docker-образа...'
                        sh "docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} ."
                    } catch (Exception e) {
                        error "Не удалось создать Docker-образ: ${e.message}"
                    }
                }
            }
        }

        stage('Развертывание Docker-контейнера') {
            steps {
                script {
                    try {
                        echo 'Развертывание Docker-контейнера...'
                        // Остановка и удаление существующего контейнера, если он запущен
                        sh """
                        docker stop ${DOCKER_CONTAINER} || true
                        docker rm ${DOCKER_CONTAINER} || true
                        """
                        // Запуск нового контейнера
                        sh """
                        docker run -d --name ${DOCKER_CONTAINER} -p ${DOCKER_PORT}:8080 ${DOCKER_IMAGE}:${DOCKER_TAG}
                        """
                    } catch (Exception e) {
                        error "Развертывание не удалось: ${e.message}"
                    }
                }
            }
        }

        stage('Проверка развертывания') {
            steps {
                script {
                    try {
                        echo 'Проверка доступности приложения...'
                        retry(5) {
                            sleep(time: 5, unit: 'SECONDS')
                            sh "curl --fail ${SERVER_URL} || exit 1"
                        }
                        echo 'Приложение доступно!'
                    } catch (Exception e) {
                        error "Проверка приложения не удалась: ${e.message}"
                    }
                }
            }
        }
    }

    post {
        success {
            echo 'Развертывание успешно завершено!'
        }
        failure {
            echo 'Развертывание не удалось. Пожалуйста, проверьте логи для получения дополнительной информации.'
        }
    }
}
