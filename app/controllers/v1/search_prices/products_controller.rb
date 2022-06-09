# frozen_string_literal: true

module V1
  module SearchPrices
    class ProductsController < ApplicationController
      def prices
        cnpjs = params[:cnpjs]
        getin_codes = params[:getin_codes]
        current_location = params[:current_location]

        establishments = BusinessEstablishment.new
        establishments = establishments.establishments_indexed_by_cnpj(cnpj: cnpjs)

        product = Product.new
        products_indexeds = product.products_indexed_by_getin_code(getin_code: getin_codes)

        product_by_establishment = ProductsByBusinessEstablishment.new
        products, getin_codes_not_found = product_by_establishment.where(
          getin_code: getin_codes,
          cnpj: cnpjs
        )
        ideal_products = product_by_establishment.ideal_products(products, establishments)
        # products = search_prices_online(getin_codes_not_found, cnpjs)

        route_generator = connect_routific_api

        optimized_route = route_generator.generate_route(ideal_products, current_location)
        ideal_fair = route_generator.build_ideal_fair(ideal_products, optimized_route, products_indexeds)

        render json: ideal_fair,
               status: :ok
      end

      def ping
        url = 'http://api.sefaz.al.gov.br/sfz_nfce_api/api/public/consultarPrecoProdutoEmEstabelecimento'
        headers = {
          'Content-Type' => 'application/json',
          'AppToken' => '982394dc00816a2c39240fd9ae291ec202b420fa'
        }
        body = {
          cnpj: '41185455000530',
          codigoBarras: '78911314',
          quantidadeDeDias: 3
        }.to_json

        products = HTTParty.post(url, body: body, headers: headers)

        binding.pry

        render json: products,
               status: :ok
      end

      private

      def search_prices_online(getin_codes, cnpjs)
        url = 'http://api.sefaz.al.gov.br/sfz_nfce_api/api/public/consultarPrecoProdutoEmEstabelecimento'
        headers = {
          'Content-Type' => 'application/json',
          'AppToken' => '982394dc00816a2c39240fd9ae291ec202b420fa'
        }

        products = cnpjs.map do |cnpj|
          getin_codes.map do |getin_code|
            body = {
              cnpj: cnpj,
              codigoBarras: getin_code,
              quantidadeDeDias: 3
            }.to_json

            HTTParty.post(url, body: body, headers: headers)
          end
        end

        products
      end

      def search_prices_local
        products = ProductsByBusinessEstablishment.new
        products.get_prices({ getin_code: '7898286201968', cnpj: '13004510039395' })
      end

      def connect_routific_api
        token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MjIzYjE5Y2JhZGE0OTAwMTgxNTc4ZmUiLCJpYXQiOjE2NTQ3NzY1MTl9.ZMajv4JpiOASOcas18Na6Pu_YNJGZwJfdVqSysLgh3s'

        RouteGenerator.set_token(token)
        RouteGenerator.new
      end
    end
  end
end
