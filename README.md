# README

.envを作成し、Channel secretsとChannel access tokenを設定する。

```
#.env
LINE_CHANNEL_SECRET=XXXXXX
LINE_CHANNEL_TOKEN=XXXXXX
```

DB作成し、コンテナを立ち上げる。

```
$ docker-compose run web rails db:create
$ docker-compose up
```