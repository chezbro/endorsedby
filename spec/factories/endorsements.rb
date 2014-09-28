# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :endorsement do
    celeb_id 1
    brand "MyString"
    amount "MyString"
    contract "MyText"
    image "MyString"
  end
end
