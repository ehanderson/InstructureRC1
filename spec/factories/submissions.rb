# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :submission do |f|
    f.student_id 1
    f.assignment_id 1
    f.grade 93
  end
end
