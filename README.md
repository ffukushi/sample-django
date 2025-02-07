# sample-django
Djangoのサンプルアプリ

## 実行手順

### .envの作成

```
# app
DJANGO_SECRET_KEY='django-insecure-{後ほど生成して値を入れる}'

# db
DATABASE='postgres'
DB_HOST='db'
DB_PORT='5432'

POSTGRES_DB='exampledb'
POSTGRES_USER='postgres'
POSTGRES_PASSWORD='postgres'
```

### ビルド・起動

```
$ docker-compose build
$ docker-compose up
```

### シークレットキーの作成

別途新規ターミナルを開いて、以下のコマンドを実行し、appコンテナに入る。

```
$ docker-compose exec -it app bash
```

対話モードを起動し、シークレットキーを生成する。

```
$ python3 manage.py shell

>>> from django.core.management.utils import get_random_secret_key
>>> get_random_secret_key()
'xxx-xxxx'
```
生成された値を.envに追記する。

```
# app
DJANGO_SECRET_KEY='django-insecure-xxx-xxxx'
```
