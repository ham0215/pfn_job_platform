# README

PFNのインターンコーディング課題が公開されていたので試しにやってみた。
下記のバックエンドを実施。
https://github.com/pfnet/intern-coding-tasks/tree/master/2019/backend

## development environment

### host os
macOS 10.14.5

### language
ruby 2.6.3

### runtime environment
Docker Desktop 2.0.0.3

```
# server
http://server:8082/job

# worker
...
```

### How to run the development

```
# docker build and start server in background
docker-compose up --build -d

# start worker
docker-compose run worker
```
