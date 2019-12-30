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

- environment variables

下記コマンドでコピーして自分の環境に合わせて設定してください。  

```
$ cp .env.default .env
```

## rules
### git
- 利用ツール  

git flow  

- git運用ルール  

git flowの仕様に従う

- commit方針  

粒度は機能単位レベルでcommit  
migrationの場合は、その分の対応ファイルのみでcommitする  

- commitコメント  

以下の例に従う  

```
[add] コメント #追加
[modify] コメント #変更
[fix] コメント #修正
[remove] コメント #削除
```

- merge作業  

レビュワーから承認をもらい、PRを作成した人がmergeする  

### PR

以下のPRのテンプレート(例)に従って作成する

```
## PRの概要
DBスキーマの運用方法の変更

## 対応内容
ridgepoleの追加対応  
操作方法についてはgithubのREADMEを参照する  
[github ridgepole](https://github.com/winebarrel/ridgepole)

## UIの変更内容
なし

## 確認するための作業
`bundle install`を行う

## 追加、対応したgem,library
gem ridgepole
```
