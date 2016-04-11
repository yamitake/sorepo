FactoryGirl.define do
  factory :admin do
    sequence(:email) { |n| "admin_#{n}@example.com"}
    password "sorepopass"
    password_confirmation "sorepopass"
  end
end
