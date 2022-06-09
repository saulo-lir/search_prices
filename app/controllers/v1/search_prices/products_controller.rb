# frozen_string_literal: true

require 'routific'

module V1
  module SearchPrices
    class ProductsController < ApplicationController
      def prices
        cnpjs = params[:cnpjs]
        getin_codes = params[:getin_codes]
        current_location = params[:current_location]

        establishments = BusinessEstablishment.new
        establishments = establishments.establishments_indexed_by_cnpj(cnpj: cnpjs)

        product = ProductsByBusinessEstablishment.new
        products, getin_codes_not_found = product.where(
          getin_code: getin_codes,
          cnpj: cnpjs
        )
        products = product.ideal_products(products, establishments)
        #products = search_prices_online(getin_codes_not_found, cnpjs)

        optimized_route = generate_route(products, current_location)
        ideal_fair = build_ideal_fair(products, optimized_route)

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

      attr_reader :routific

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

      def generate_route(products, current_location)
        establishments = products.pluck(:establishment).uniq
        @routific = connect_routific_api

        fill_establishments_to_visit(establishments)
        fill_vehicle(current_location)

        routific.get_route
      end

      def connect_routific_api
        token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MjIzYjE5Y2JhZGE0OTAwMTgxNTc4ZmUiLCJpYXQiOjE2NTQ3NzY1MTl9.ZMajv4JpiOASOcas18Na6Pu_YNJGZwJfdVqSysLgh3s'

        Routific.set_token(token)
        Routific.new
      end

      def fill_establishments_to_visit(establishments)
        visits = establishments.map do |establishment|
          {
            'id' => establishment[:cnpj],
            'start' => '9:00',
            'end' => '12:00',
            'duration' => 10,
            'location' => {
              'name' => establishment[:name],
              'lat' => establishment[:latitude],
              'lng' => establishment[:longitude]
            }
          }
        end

        visits.each do |visit|
          routific.set_visit(visit['id'], visit)
        end
      end

      def fill_vehicle(current_location)
        routific.set_vehicle(
          'my_car', {
            'start_location' => {
              'name' => 'Casa',
              'lat' => current_location[:latitude],
              'lng' => current_location[:longitude]
            },
            'end_location' => {
              'name' => 'Casa',
              'lat' => current_location[:latitude],
              'lng' => current_location[:longitude]
            },
            'shift_start' => '8:00',
            'shift_end' => '12:00'
          }
        )
      end

      def build_ideal_fair(products, optimized_route)
        route = sanitize_route(optimized_route)
        fair = build_fair_by_establishments(products)

        route.map do |point|
          fair[point.location_id]
        end
      end

      def sanitize_route(optimized_route)
        route = optimized_route.vehicle_routes.first.second
        route.shift
        route.pop
        route
      end

      def build_fair_by_establishments(products)
        hash = {}
        products.each do |product|
          hash[product[:establishment][:cnpj]] ||= []

          if hash[product[:establishment][:cnpj]].first.nil?
            hash[product[:establishment][:cnpj]] << { establishment: product[:establishment] }
            hash[product[:establishment][:cnpj]] << { products: [] }
          end

          hash[product[:establishment][:cnpj]].second[:products] << {
            name: '',
            getin_code: product[:getin_code],
            value: product[:value]
          }
        end
        hash
      end
    end
  end
end
