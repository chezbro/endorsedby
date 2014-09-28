# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :celeb do
    first_name "MyString"
    last_name "MyString"
    name "MyString"
    dob "2014-09-28 16:17:22"
    dod "2014-09-28 16:17:22"
    bio "MyText"
  end
end
