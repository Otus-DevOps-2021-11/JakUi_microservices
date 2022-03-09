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

## Docker: сети, docker-compose

Выполнил несколько раз команду `docker run --network host -d nginx` в результате выполнения команды `docker ps`
получил:

`CONTAINER ID   IMAGE               COMMAND                  CREATED         STATUS         PORTS    NAMES`
`38a0affc15e2   nginx               "/docker-entrypoint.…"   4 minutes ago   Up 4 minutes                                        ` `beautiful_colden`
`db7777bd0900   jakui/ui:1.0        "puma"                   27 hours ago    Up 27 hours    0.0.0.0:9292->9292/tcp, :::9292->9292/tcp  ` `stoic_chandrasekhar`
`1e9d27327307   jakui/comment:1.0   "puma"                   27 hours ago    Up 27 hours                                         ` `admiring_lovelace`
`3263e2f334bd   jakui/post:1.0      "python3 post_app.py"    27 hours ago    Up 27 hours                                         ` `thirsty_fermat`
`c541b2ecc1d0   mongo:latest        "docker-entrypoint.s…"   27 hours ago    Up 27 hours    27017/tcp                            ` `modest_raman```

и
`
`CONTAINER ID   IMAGE               COMMAND                  CREATED         STATUS         PORTS    NAMES`
`02409b54d270   nginx               "/docker-entrypoint.…"   2 seconds ago   Up 1 second                                         ` `wonderful_hermann`
`38a0affc15e2   nginx               "/docker-entrypoint.…"   4 minutes ago   Up 4 minutes                                        ` `beautiful_colden`
`db7777bd0900   jakui/ui:1.0        "puma"                   27 hours ago    Up 27 hours    0.0.0.0:9292->9292/tcp, :::9292->9292/tcp  ` `stoic_chandrasekhar`
`1e9d27327307   jakui/comment:1.0   "puma"                   27 hours ago    Up 27 hours                                         ` `admiring_lovelace`
`3263e2f334bd   jakui/post:1.0      "python3 post_app.py"    27 hours ago    Up 27 hours                                         ` `thirsty_fermat`
`c541b2ecc1d0   mongo:latest        "docker-entrypoint.s…"   27 hours ago    Up 27 hours    27017/tcp                            `
`modest_raman`

Я так и не понял, почему(.

### Узнайте как образуется базовое имя проекта. Можно ли его задать? Если можно то как?

В качестве базового имени проекта Docker-Compose использует имя папки. Соотв-но его можно изменить изменив название
папки, содержащей Docker-compose файл. Также чтобы установить другое имя проекта, можно вызвать команду
`docker-compose --project-name NAME {up|down|...}` либо добавить переменную `COMPOSE_PROJECT_NAME=желаемое_имя_проекта`
в файле `.env`.
## Docker Hub

Мой docker hub находится по ссылке https://hub.docker.com/repository/docker/jakui/prometheus
