# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :assignment do |f|
    f.name {Faker::Name.name}
  end
end
