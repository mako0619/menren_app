# メインのサンプルユーザーを1人作成する
User.create!(name:  "recruit",
  email: "recruit@example.com",
  password:              "password",
  password_confirmation: "password")

# 追加のユーザーをまとめて生成する
25.times do |n|
name  = Faker::Name.name
email = "example-#{n+1}@mao.com"
password = "password"
User.create!(name:  name,
   email: email,
   password:              password,
   password_confirmation: password)
end

# ユーザーの一部を対象にポストを生成する
users = User.order(:created_at).take(3)
25.times do
  title = Faker::Lorem.sentence(word_count: 5)
  content = Faker::Lorem.sentence(word_count: 30)
  users.each { |user| user.posts.create!(title: title, content: content)}
end
