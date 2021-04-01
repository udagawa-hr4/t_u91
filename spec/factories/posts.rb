FactoryBot.define do
  factory :post do
    title {"テストタイトル"}
    # text {"テストコンテント"}
    user_id {1}
    association :user, factory: :user

    text {Faker::Base.regexify("[テストtestTEST]{1001}")}



    after(:build) do |post|
      post.image.attach(io: File.open('public/images/test-img.jpeg'), filename: 'test-img.jpeg')
    end
  end
end
