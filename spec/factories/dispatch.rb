# frozen_string_literal: true

FactoryBot.define do
  factory :dispatch do
    name { Faker::Name.name }
    email { Faker::Internet.email}
    password_digest {'foobar'}
  end
end
