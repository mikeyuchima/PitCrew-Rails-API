# frozen_string_literal: true

FactoryBot.define do
  factory :ride do
    name { Faker::Name.name }
    date { Faker::Date.forward(23) }
    latStart { Faker::Address.latitude }
    longStart { Faker::Address.longitude }
    latEnd { Faker::Address.latitude }
    longEnd { Faker::Address.longitude }
    association :dispatch_id, factory: :dispatch
  end
end
