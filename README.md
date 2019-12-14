# first_free_project
これから埋めていきます。

## features

### Ruby version

- check `.ruby-version`

### Rails version

- check `Gemgile`

## setup

### docker

- build image

```
$ docker-compose build --no-cache
```

- run containers

```
$ docker-compose up -d
```

- stop containers

```
$ docker-compose down
```

### initialize app

- connect DB

下記コマンドでコピーして自分の環境に合わせて設定してください。  

```
$ cp config/database.yml.default config/database.yml
```

- create DB

```
$ docker-compose exec web rails db:create
```

- migration

```
$ docker-compose exec web rails db:migrate
```

- insert seed data

```
$ docker-compose exec web rails db:seed
```
