FactoryBot.define do
  factory :comment do

    text {"テストテキスト"}
    user_id {1}
    post_id {1}
    id {1}

    association :user, factory: :user
    association :post, factory: :post
  end
end
