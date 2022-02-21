FactoryBot.define do
  factory :admini_strator do
    sequence(:email) { |n| "admin#{n}@example.com" }
    password { 'pw' }
    suspended { false }
  end
end
