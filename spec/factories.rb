FactoryGirl.define do

  factory :faculty do
    name "Faculty"
  end

  factory :department do
    name "Department"
    faculty
  end

  factory :room do
    name "Room"
  end

  factory :employee do
    name "Employee"
    email "emplo@yee"
    department
    room
  end

  factory :research_group do
    name "Research group"
  end

  factory :user do
    username "admin"
    password "testtest"
    password_confirmation "testtest"
  end
end