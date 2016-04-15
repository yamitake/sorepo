FactoryGirl.define do
  factory :user , class: User do
    sequence(:email) { |n| "user_#{n}@example.com"}
    password "sorepopass"
    password_confirmation "sorepopass"
  end
end
