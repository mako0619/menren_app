# メインのサンプルユーザーを2人作成する
User.create!(name:  "recruit",
  email: "recruit@example.com",
  password:              "password",
  password_confirmation: "password")

User.create!(name:  "foobar",
  email: "foobar@example.com",
  password:              "foobar",
  password_confirmation: "foobar")


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

# 以下のリレーションシップを作成する
users = User.all
user  = users.first
following = users[2..10]
followers = users[3..9]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
