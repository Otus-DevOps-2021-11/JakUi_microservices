# JakUi_microservices
JakUi microservices repository

## Технология контейнеризации. Введение в Docker

### Как запустить проект:

В корне каталога `docker-monolith`

 1. Выполнить команду docker build -t reddit:latest .
 2. Выполнить команду docker run --name reddit -d --network=host reddit:latest
### Как проверить работоспособность:

Перейти по ссылке https://hub.docker.com/repository/docker/jakui/otus-reddit и проверить наличие образа

### Что ещё было сделано:

В попытке автоматизировать разворот через Terraform и Ansible был настроен шаблон Terraform, а также создан образ
в Packer (образ содержит установленную Ubuntu 20.04 и Docker)

## Docker-образы. Микросервисы

В процессе выполнения ДЗ были созданы Dockerfile для разворота приложения как несколько микросервисов. Попытка
оптимизировать (уменьшить размер) docker image не увеньчалась успехом.
