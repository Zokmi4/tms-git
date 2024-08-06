# Шаг 1: Указываем базовый образ Ubuntu 20.04
FROM ubuntu:20.04

# Шаг 2: Устанавливаем необходимые пакеты и создаем директорию для статических файлов
RUN apt-get update && \
    apt-get install -y nginx curl && \
    mkdir -p /app/static

# Шаг 3: Копируем файл конфигурации nginx внутрь контейнера
COPY nginx.conf /etc/nginx/nginx.conf

# Шаг 4: Копируем статические файлы из локального каталога в контейнер
COPY ./app/static /app/static

# Шаг 5: Открываем порт 8080
EXPOSE 8080

# Шаг 6: Запускаем nginx с указанием конфигурационного файла
CMD ["nginx", "-g", "daemon off;"]
