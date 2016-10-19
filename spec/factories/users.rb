FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "test#{n}@fake.com" }
    password 'Password1'
    password_confirmation 'Password1'
    role User.roles[:user]

    trait :user do
      role User.roles[:user]
    end

    trait :admin do
      role User.roles[:admin]
    end
  end
end
