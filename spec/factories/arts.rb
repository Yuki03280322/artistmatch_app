FactoryBot.define do
  factory :art do
    arttype_id   { 2 }
    arttouch_id  { 2 }
    association :artist

    after(:build) do |art|
      art.image.attach(io: File.open('public/images/test_image.png'),filename: 'test_image.png')
    end
  end
end
