#frozen_string_literal: true  
FactoryBot.define do   
    factory :dispatch do
        username { Faker::Name.name }
        password_hash  { 'password' }   
    end 
end