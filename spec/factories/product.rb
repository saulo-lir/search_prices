# frozen_string_literal: true

FactoryBot.define do
  factory :product, class: 'Product' do
    code { Faker::Code.npi }
    getin_code { Faker::Barcode.ean }
    cfop_code { Faker::Code.npi }
    ncm_code { Faker::Code.npi }
    anp_code { Faker::Code.npi }
    comercial_unit_code { Faker::Code.npi }
    description { Faker::FunnyName.two_word_name }
  end
end
