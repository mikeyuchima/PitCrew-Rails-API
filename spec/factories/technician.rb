# frozen_string_literal: true

FactoryBot.define do
  factory :technician do
    username { Faker::Name.name }
    name { Faker::Name.name }
    password { 'password' }
    association :ride_id, factory: :ride
  end
end
