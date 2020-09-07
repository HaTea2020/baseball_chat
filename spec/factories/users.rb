FactoryBot.define do
  factory :user do
    nickname {Faker::Name.last_name}
    email {Faker::Internet.free_email}
    password = Faker::Internet.password(min_length: 6)
    password {password}
    password_confirmation {password}
    team_id {Faker::Number.between(from: 2, to: 13)}
    favorite_player {Faker::Name.last_name}
    introduction {Faker::Lorem.sentence}
  end
end