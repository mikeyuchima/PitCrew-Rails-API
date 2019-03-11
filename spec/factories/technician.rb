# frozen_string_literal: true

FactoryBot.define do
  factory :technician do
    name { Faker::Name.name }
    email { Faker::Internet.email}
    password_digest {'foobar'}
    
    association :ride_id, factory: :ride
  end
end
