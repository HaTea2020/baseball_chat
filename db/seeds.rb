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
  id: 1,
  name: "読売ジャイアンツ専用チャット",
  content: "test",
  user_id: 1,
  official: "Yes"
)
Room.create!(
  id: 2,
  name: "横浜DeNAベイスターズ専用チャット",
  content: "test",
  user_id: 1,
  official: "Yes"
)
Room.create!(
  id:3,
  name: "阪神タイガース専用チャット",
  content: "test",
  user_id: 1,
  official: "Yes"
)
Room.create!(
  id: 4,
  name: "ヤクルトスワローズ専用チャット",
  content: "test",
  user_id: 1,
  official: "Yes"
)
Room.create!(
  id: 5,
  name: "中日ライオンズ専用チャット",
  content: "test",
  user_id: 1,
  official: "Yes"
)
Room.create!(
  id: 6,
  name: "広島カープ専用チャット",
  content: "test",
  user_id: 1,
  official: "Yes"
)
Room.create!(
  id: 7,
  name: "ソフトバンクホークス専用チャット",
  content: "test",
  user_id: 1,
  official: "Yes"
)
Room.create!(
  id: 8,
  name: "西武ライオンズ専用チャット",
  content: "test",
  user_id: 1,
  official: "Yes"
)
Room.create!(
  id: 9,
  name: "千葉ロッテマリーンズ専用チャット",
  content: "test",
  user_id: 1,
  official: "Yes"
)
Room.create!(
  id: 10,
  name: "楽天イーグルス専用チャット",
  content: "test",
  user_id: 1,
  official: "Yes"
)
Room.create!(
  id: 11,
  name: "オリックスバファローズ専用チャット",
  content: "test",
  user_id: 1,
  official: "Yes"
)
Room.create!(
  id: 12,
  name: "日本ハムファイターズ専用チャット",
  content: "test",
  user_id: 1,
  official: "Yes"
)