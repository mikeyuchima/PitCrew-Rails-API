# frozen_string_literal: true

FactoryBot.define do
  factory :technician do
    username { Faker::Name.name }
    email { Faker::Internet.email }
    password_digest 'foobar'
    association :ride_id, factory: :ride
  end
end
