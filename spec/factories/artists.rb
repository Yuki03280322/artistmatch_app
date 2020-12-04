FactoryBot.define do
  factory :artist do
    email                 {'test@test.com'}
    password              {'aaa111'}
    password_confirmation {password}
    name                  {'testたろう'}
    job_request           {'emailでお願いします'}
    profile               {'温かい絵が得意です'}
    arttype_id            { 2 }
    arttouch_id           { 2 }
    price_id              { 2 }
    line                  {'hoge'}
    twitter               {'hoge'}
  end
end
