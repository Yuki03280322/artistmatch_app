FactoryBot.define do
  factory :art do
    arttype_id   { 2 }
    arttouch_id  { 2 }
    association :artist

    after(:build) do |art|
      art.image = Refile::FileDouble.new('dummy', 'test_image.png', content_type: 'image/png')
    end
  end
end
