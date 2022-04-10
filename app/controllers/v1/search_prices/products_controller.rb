# frozen_string_literal: true

require 'routific'

module V1
  module SearchPrices
    class ProductsController < ApplicationController
      def prices
        cnpjs = params.fetch(:cnpjs)
        getin_codes = params.fetch(:getin_codes)

        products = ProductsByBusinessEstablishment.new
        prices, getin_codes_not_found = products.products_grouped_by_establishment(getin_codes, cnpjs)
        #products = search_prices_online(getin_codes_not_found, cnpjs)

        render json: prices,
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

      def generate_route
        routific = connect_routific_api

        visits = [
          {
            "id" => "order_1",
            "start" => "9:00",
            "end" => "12:00",
            "duration" => 10,
            "location" => {
              "name" => "Assaí Atacadista",
              "lat" => -9.566313970441753,
              "lng" => -35.77456526350128
            }
          },
          {
            "id" => "order_2",
            "start" => "9:00",
              "end" => "12:00",
              "duration" => 10,
              "location" => {
                "name"=> "Big Supermercado",
                "lat"=> -9.540731738997028,
                "lng"=> -35.7867270052222
              }
          },
          {
            "id" => "order_3",
            "start" => "9:00",
              "end" => "12:00",
              "duration" => 10,
              "location" => {
                "name"=> "Supermercado Líder",
                "lat"=> -9.569360204626474,
                "lng"=> -35.75645860278647
              }
          },
          {
            "id" => "order_4",
            "start" => "9:00",
              "end" => "12:00",
              "duration" => 10,
              "location" => {
                "name"=> "Sexta de Alimentos",
                "lat"=> -9.58378081657683,
                "lng"=> -35.76809533175064
              }
          }
        ]
        
        visits.each do |visit|
          routific.set_visit(visit["id"], visit)
        end

        routific.set_vehicle("vehicle_1", {
          "start_location" => {
            "name" => "Casa",
            "lat" => -9.549320146552429,
            "lng" => -35.80975881586224
          },
          'end_location' => {
            'name' => 'Casa',
            'lat' => -9.549320146552429,
            'lng' => -35.80975881586224
          },
          'shift_start' => '8:00',
          'shift_end' => '12:00'
        })

        route = routific.get_route
        binding.pry
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
        token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MjIzYjE5Y2JhZGE0OTAwMTgxNTc4ZmUiLCJpYXQiOjE2NDY1MDYzOTZ9._IJhFyEwAi5OsTvT1smQwBZUZDfCY54eKwkGOqBM8sM'

        Routific.set_token(token)
        Routific.new
      end
    end
  end
end
