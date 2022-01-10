# frozen_string_literal: true

module V1
  module SearchPrices
    class ProductsController < ApplicationController
      def index
        url = 'http://api.sefaz.al.gov.br/sfz_nfce_api/api/public/consultarPrecoProdutoEmEstabelecimento'
        headers = {
          'Content-Type' => 'application/json',
          'AppToken' => '982394dc00816a2c39240fd9ae291ec202b420fa'
        }
        body = {
          cnpj: '06057223039469',
          codigoBarras: '7896224813082',
          quantidadeDeDias: 3
        }.to_json

        response = HTTParty.post(url, body: body, headers: headers)
        binding.pry

        # TO DO: Aplicar a biblioteca https://github.com/rails-api/active_model_serializers ou semelhante para serializar os dados

        render json: response,
               status: :ok
      end
    end
  end
end
