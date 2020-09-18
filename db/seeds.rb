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
