# frozen_string_literal: true

FactoryBot.define do
  factory :products_by_business_establishment, class: 'ProductsByBusinessEstablishment' do
    getin_code { Faker::Barcode.ean }
    cnpj { Faker::IDNumber.brazilian_citizen_number }
    unit_value_last_sale { Faker::Number.decimal(l_digits: 2) }
    value_last_sale { Faker::Number.decimal(l_digits: 2) }
    minimum_value_sold { Faker::Number.decimal(l_digits: 2) }
    maximum_value_sold { Faker::Number.decimal(l_digits: 2) }
    last_sale_issue_date { Faker::Date.in_date_period }
    last_sale_issue_date_description { Faker::Date.in_date_period }
  end
end
