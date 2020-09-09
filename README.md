# アプリケーション名
  プロ野球コミュニティーチャット

# 概要
  プロ野球の事についてコミュニケーションが取れるアプリとして開発しました。
  作成理由としましてプロ野球専門としているチャットサイトが見当たらなかった為
  プロ野球ファン同士が交流出来る場所を作る事にしました。
  このサイトは12球団のファン同士が繋がる事の出来るチャットサイトです。
  12球団毎に用意している固定チャットルームと
  個人でルームを作成できるようにしました。

# 利用方法
  ユーザー登録をしてからそれぞれのチャットルームでチャットを楽しめます。
  ユーザー登録していない方でもチャットはご覧いただけます。

# サイトURL
  https://baseball-chat2020.herokuapp.com/

# 工夫したポイント
  固定チャットと新規チャットを作り別のチャットルームとして分けて
  12球団毎に楽しめる場と個々人で楽しめる場があるのでそれぞれの交流の場を作っている。


# 実装予定
  マイページにニックネーム付きでコメント出来るようにする。


# テーブル設計

## users テーブル

| Column           | Type   | Options     |
| ---------------- | ------ | ----------- |
| nickname         | string | null: false |
| email            | string | null: false |
| password         | string | null: false |
| team_id          | string | null: false |
| favorite_player  | string | null: false |
| introduction     | text   | null: false |


### Association
- has_many :rooms
- has_many :messages

## rooms テーブル

| Column    | Type   | Options     |
| --------- | ------ | ----------- |
| name      | string | null: false |
| content   | string | null: false |

### Association
- belongs_to :user
- has_many :messages


## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| comment | string     |                                |
| user_id | references | null: false, foreign_key: true |
| room_id | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## relationship テーブル

| Column       | Type     |
| ------------ | -------- |
| follower_id  | integer  |
| following_id | integer  |

## 開発環境
  rails _6.0.0_