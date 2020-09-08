# アプリケーション名
  プロ野球コミュニティーチャット

# 概要
  プロ野球好きが集まるコミュニティーサイト

# 利用方法
  ユーザー登録をしてからそれぞれのチャットルームでチャットを楽しめます。

# サイトURL
  https://baseball-chat2020.herokuapp.com/

# 目指した課題解決
  プロ野球専門のチャットサイトが見当たらなかったので、このサイトでプロ野球ファンが交流出来る場所を作る。

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