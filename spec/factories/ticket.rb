# frozen_string_literal: true

FactoryBot.define do
  factory :ticket do
    rider { Faker::Name.name }
    contact { Faker::PhoneNumber.cell_phone }
    lat { Faker::Address.latitude.to_f }
    lng { Faker::Address.longitude.to_f }
    ttype { 'mechanical' }
    startTime { DateTime.current }
    endTime { DateTime.current }
    status { 'pending' }

    association :ride_id, factory: :ride
    association :technician_id, factory: :technician
  end
end
