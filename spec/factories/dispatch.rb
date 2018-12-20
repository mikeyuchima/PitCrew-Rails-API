#frozen_string_literal: true  
FactoryBot.define do   
    factory :dispatch do
        username { Faker::Name.name }
        password { 'password' }   
    end 
end