# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  nickname: "staff",
  team_id: 11,
  favorite_player: "種市",
  introduction: "test",
  email: 'test@test.com', 
  password: 'aaa111'
)
Room.create!(
  name: "読売ジャイアンツ専用チャット",
  content: "test",
  user_id: "1",
  official: "Yes"
)
Room.create!(
  name: "横浜DeNAベイスターズ専用チャット",
  content: "test",
  user_id: "1",
  official: "Yes"
)
Room.create!(
  name: "阪神タイガース専用チャット",
  content: "test",
  user_id: "1",
  official: "Yes"
)
Room.create!(
  name: "ヤクルトスワローズ専用チャット",
  content: "test",
  user_id: "1",
  official: "Yes"
)
Room.create!(
  name: "中日ライオンズ専用チャット",
  content: "test",
  user_id: "1",
  official: "Yes"
)
Room.create!(
  name: "広島カープ専用チャット",
  content: "test",
  user_id: "1",
  official: "Yes"
)
Room.create!(
  name: "ソフトバンクホークス専用チャット",
  content: "test",
  user_id: "1",
  official: "Yes"
)
Room.create!(
  name: "西武ライオンズ専用チャット",
  content: "test",
  user_id: "1",
  official: "Yes"
)
Room.create!(
  name: "千葉ロッテマリーンズ専用チャット",
  content: "test",
  user_id: "1",
  official: "Yes"
)
Room.create!(
  name: "楽天イーグルス専用チャット",
  content: "test",
  user_id: "1",
  official: "Yes"
)
Room.create!(
  name: "オリックスバファローズ専用チャット",
  content: "test",
  user_id: "1",
  official: "Yes"
)
Room.create!(
  name: "日本ハムファイターズ専用チャット",
  content: "test",
  user_id: "1",
  official: "Yes"
)