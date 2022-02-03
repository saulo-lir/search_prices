# frozen_string_literal: true

FactoryBot.define do
  factory :business_establishment, class: 'BusinessEstablishment' do
    cnpj { Faker::IDNumber.brazilian_citizen_number }
    company_name { Faker::Company.name }
    trade_name { Faker::Company.suffix }
    phone { Faker::PhoneNumber.phone_number }
    street { Faker::Address.street_name }
    number { Faker::Address.building_number }
    neighborhood { Faker::Address.community }
    zip_code { Faker::Address.zip_code }
    city_ibge_code { Faker::Address.city_suffix }
    city { Faker::Address.city }
    state { Faker::Address.state }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
  end
end
