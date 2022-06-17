# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'V1 Establishments', type: :request do
  describe 'GET /v1/search_prices/establishments' do
    context 'when searches for nearby establishments to the user' do
      subject(:get_establishments) do
        get '/v1/search_prices/establishments'
      end

      it 'returns establishments' do
        get_establishments
        result = JSON.parse(response.body)

        expect(response).to have_http_status(:ok)
        expect(result['data'].length).to eq(14)
        expect(result['data'].first['attributes']['trade_name']).to eq('UNI COMPRA')
        expect(result['data'].last['current_location']).to eq({ 'latitude' => -9.6658, 'longitude' => -35.7353 })
      end
    end
  end
end
