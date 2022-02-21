# Baukis2 - 顧客管理システム

## 説明

Baukis2 は企業向けの顧客管理システムのプロトタイプです・

## 動作環境

* Ruby 2.6.4
* PostgreSQL 11.2

## 注意事項

* 以下の手順では、一般ユーザーの権限でコマンドを実行してください。

## 環境構築

* 設定ファイル等の取得

```
git clone https://github.com/koheinoguchi0216/rails_app.git
cd rails_app
```

* docker起動

```
docker-compose build
docker-compose up
```

## システムの利用

* ブラウザで以下の URL にアクセスしてください:
    * http://baukis2.example.com:3000 -- 職員向けサイト
    * http://baukis2.example.com:3000/admin -- 管理者向けサイト
    * http://example.com:3000/mypage -- 顧客向けサイト