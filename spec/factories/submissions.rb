# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :submission do
    student_id 1
    assignment_id 1
    grade 1
  end
end
