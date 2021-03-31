FactoryBot.define do
  factory :post do
    title {"テストタイトル"}
    text {"テストコンテント"}
    user_id {1}
    association :user, factory: :user
  end
end
