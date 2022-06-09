# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'V1 Products', type: :request do
  describe 'GET /v1/search_prices/products/prices' do
    subject(:get_prices) do
      get '/v1/search_prices/products/prices',
          params: params
    end

    let!(:business_establishment) { create_list(:business_establishment, 5) }
    # let!(:establishments_location) do
    #   business_establishment.map do |establishment|
    #     {
    #       latitude: establishment[:latitude],
    #       longitude: establishment[:longitude]
    #     }
    #   end
    # end
    let!(:products) { create_list(:product, 20) }
    let!(:products_by_establishments) { create_list(:products_by_business_establishment, 100) }
    let!(:updated_products_by_establishments) do
      total_products = (products.length - 1)
      total_establishments = (business_establishment.length - 1)
      array = []
      products_by_establishments.each_with_object({}).with_index do |(object, _), index|
        array[index] = object
        array[index].getin_code = products[rand(0..total_products)].getin_code
        array[index].cnpj = business_establishment[rand(0..total_establishments)].cnpj
        array[index].save!
      end
      array
    end
    let!(:current_location) { { latitude: -9.6658, longitude: -35.7353 } }

    let(:params) do
      {
        cnpjs: updated_products_by_establishments.pluck('cnpj').uniq,
        getin_codes: updated_products_by_establishments.pluck('getin_code'),
        current_location: current_location
      }
    end

    context 'when searches prices' do
      it 'returns all prices' do
        get_prices
        # binding.pry
      end

      context 'when send getin_codes that does not exist in local data base' do
        let(:new_getin_codes) { create_list(:product, 5).pluck(:getin_code) }
        let!(:update_params) do
          new_getin_codes.each do |getin_code|
            params[:getin_codes] << getin_code
          end
        end

        it 'returns prices' do
          get_prices
        end
      end
    end
  end

  describe 'GET /v1/search_prices/products/ping' do
    subject(:get_prices) do
      get '/v1/search_prices/products/ping'
    end

    context 'when searches prices in SEFAZ api' do
      it 'returns all prices' do
        get_prices
        binding.pry
      end
    end
  end

  describe 'GET /v1/search_prices/products/generate_route' do
    subject(:generate_route) do
      get '/v1/search_prices/products/generate_route'
    end

    context 'when searches prices in SEFAZ api' do
      it 'returns all prices' do
        generate_route
        # binding.pry
      end
    end
  end
end
