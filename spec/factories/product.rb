require 'factory_girl'
require 'faker'

FactoryGirl.define do

  factory :product do |f|
    title Faker::Company.name
    description Faker::Lorem.paragraph
  end

  factory :product_with_missing_title, parent: :product do |f|
    title nil
  end

  factory :product_with_missing_description, parent: :product do |f|
    description nil
  end
end