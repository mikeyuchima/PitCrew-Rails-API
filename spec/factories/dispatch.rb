# frozen_string_literal: true

FactoryBot.define do
  factory :dispatch do
    username { Faker::Name.name }
    email { Faker::Internet.email }
    password_digest 'foobar'
  end
end
