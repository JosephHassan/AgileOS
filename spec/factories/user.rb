require 'factory_girl'
require 'faker'

FactoryGirl.define do

  factory :user do |f|
    f.first_name Faker::Name.first_name
    f.last_name Faker::Name.last_name
    f.username Faker::Internet.user_name
  end

  factory :invalid_first_name, parent: :user do |f|
    f.first_name nil
  end

  factory :invalid_last_name, parent: :user do |f|
    f.last_name nil
  end

  factory :invalid_username, parent: :user do |f|
    f.username nil
  end

end