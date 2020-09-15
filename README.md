# アプリケーション名
  プロ野球コミュニティーチャットサイト

# DEMO
<img width="1426" alt="スクリーンショット 2020-09-14 18 02 55" src="https://user-images.githubusercontent.com/67272258/93066248-bafe5e00-f6b4-11ea-9cf8-4d9803161b98.png">
<img width="1439" alt="スクリーンショット 2020-09-14 18 03 38" src="https://user-images.githubusercontent.com/67272258/93066286-c782b680-f6b4-11ea-8bd3-6654d0e18c1a.png">


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
  固定チャットと新規チャットを作り別のチャットルームとして分けて12球団毎に楽しめる場と個々人で楽しめる場があるのでそれぞれの交流の場を作っています。

  ユーザ登録していない人にも楽しんでもらえるようにチャット内は閲覧出来るようにしています。登録している人はチャット・ルーム作成・マイページの閲覧が出来るようになります。こういった点で差別化を測っています。

# テスト用アカウント
チャット用 
 * ユーザー１ 
   * メールアドレス: test@gmail.com
   * パスワード: testpass 

フォローテスト用 
 * ユーザー２ 
   * メールアドレス: test2@gmail.com
   * パスワード: testpass


# 実装予定
  マイページにニックネーム付きでコメント出来るようにします。

  成績の詳細をスクレイピングしてそのデータを表にして載せます。

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