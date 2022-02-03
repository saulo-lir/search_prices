# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'V1 Products', type: :request do
  describe 'GET /v1/search_prices/products/search_prices_online' do
    context 'when searches prices' do
      subject(:get_prices) do
        get '/v1/search_prices/products/search_prices_online'
      end

      it 'returns prices' do
        get_prices
        binding.pry
      end
    end
  end

  describe 'GET /v1/search_prices/products' do
    context 'when searches establishments' do
      subject(:get_establishments) do
        get '/v1/search_prices/products'
      end

      it 'returns establishments' do
        get_establishments
        binding.pry
      end
    end
  end

  describe 'GET /v1/search_prices/products/prices' do
    subject(:get_prices) do
      get '/v1/search_prices/products/prices',
          params: params
    end

    let!(:business_establishment) { create_list(:business_establishment, 20) }
    let!(:products) { create_list(:product, 300) }
    let!(:products_by_establishments) { create_list(:products_by_business_establishment, 300) }

    let!(:updated_products_by_establishments) do
      total_establishments = (business_establishment.length - 1)
      array = []
      products_by_establishments.each_with_object({}).with_index do |(object, _), index|
        array[index] = object
        array[index].getin_code = products[index].getin_code
        array[index].cnpj = business_establishment[rand(0..total_establishments)].cnpj
      end
      array
    end

    let!(:params) do
      {
        cnpjs: updated_products_by_establishments.pluck('cnpj').uniq,
        getin_codes: updated_products_by_establishments.pluck('getin_code')
      }
    end

    context 'when searches prices' do
      it 'returns all prices' do
        get_prices
      end
    end
  end
end
