# frozen_string_literal: true

module V1
  module SearchPrices
    class ProductsController < ApplicationController
      def index
        # TO DO: Pra pegar o IP e depois as coordenadas, preciso estar num servidor de produção
        # Colocar essa funcionalidade de pegar as coordenadas na rota de login
        #city = request.location.city

        current_location = { latitude: -9.531374678737322, longitude: -35.78369540337434 } # Jardim dos eucaliptos
        establishments = BusinessEstablishment.new
        establishments = establishments.get_establishment_by_current_location(current_location)

        # TO DO: Serializar antes de enviar para o front
        render json: establishments,
               status: :ok
      end

      def prices
        cnpjs = params.fetch(:cnpjs)
        getin_codes = params.fetch(:getin_codes)

        products = ProductsByBusinessEstablishment.new
        products = products.products_grouped_by_establishment(getin_codes, cnpjs)

        binding.pry
      end

      def search_prices_online
        url = 'http://api.sefaz.al.gov.br/sfz_nfce_api/api/public/consultarPrecoProdutoEmEstabelecimento'
        headers = {
          'Content-Type' => 'application/json',
          'AppToken' => '982394dc00816a2c39240fd9ae291ec202b420fa'
        }
        body = {
          cnpj: '14937103000197',
          codigoBarras: '78911314',
          quantidadeDeDias: 3
        }.to_json

        product = HTTParty.post(url, body: body, headers: headers)

        render json: product,
               status: :ok
      end

      private

      def search_prices_local
        products = ProductsByBusinessEstablishment.new
        products.get_prices({ getin_code: '7898286201968', cnpj: '13004510039395' })
      end
    end
  end
end
