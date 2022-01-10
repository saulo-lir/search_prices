# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'V1 Products', type: :request do
  describe 'GET /v1/search_prices/products' do
    context 'when searches prices' do
      subject(:get_prices) do
        get '/v1/search_prices/products'
      end

      it 'returns all prices' do
        get_prices
      end
    end
  end
end
