# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'V1 Products', type: :request do
  describe 'GET /v1/search_prices/products/prices' do
    subject(:get_prices) do
      get '/v1/search_prices/products/prices',
          params: params
    end

    let(:params) do
      {
        "cnpjs": %w[13004510039638 75315333009831 08618647000193 10840716000827],
        "getin_codes":
        [
          { "quantity": 4, "code": '7894900010398' },
          { "quantity": 12, "code": '7896045523412' },
          { "quantity": 3, "code": '7896102501605' },
          { "quantity": 3, "code": '7896038306053' },
          { "quantity": 2, "code": '7896224813082' },
          { "quantity": 6, "code": '7891000062661' },
          { "quantity": 2, "code": '7891527062991' },
          { "quantity": 8, "code": '7896481130328' },
          { "quantity": 6, "code": '7896005030356' },
          { "quantity": 2, "code": '7891091061659' }
        ],
        "current_location": { "latitude": -9.549320146552429, "longitude": -35.80975881586224 }
      }
    end

    context 'when find requested products' do
      it 'returns all prices' do
        get_prices
        result = JSON.parse(response.body)

        expect(result.first['resume'].first['total_establishments']).to be_positive
        expect(result.first['details'].flatten.pluck('establishment').compact.length).to be_positive
        total_amount = result.first['resume'].first['total_amount']
        total_amount2 = result.first['details'].flatten.pluck('establishment').compact.pluck('total_value').sum
        expect(total_amount).to be_positive
        expect(total_amount).to eq(total_amount2)
      end
    end
  end
end
