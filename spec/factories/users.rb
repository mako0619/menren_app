FactoryBot.define do
  factory :user, class: User do
    name { 'sao' }
    email { 'sao@example.com' }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
