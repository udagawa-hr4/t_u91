FactoryBot.define do
  factory :blog do

    title {"株式会社Ruby、二次面接"}
    content {"持ち物：履歴書、職務経歴書、熱意"}
    user_id {1}
    association :user, factory: :user
  end
end
