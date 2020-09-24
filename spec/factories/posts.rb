FactoryBot.define do
  factory :post, class: Post do
    title { 'テスト' }
    content { 'テストテスト' }
    association :user
  end
end
