# frozen_string_literal: true

module V1
  module SearchPrices
    class ProductsController < ApplicationController
      def prices
        user_params = {
          cnpjs: params[:cnpjs],
          getin_codes: params[:getin_codes].pluck(:code)
        }

        current_location = params[:current_location]

        establishments = BusinessEstablishment.new
        establishments = establishments.establishments_indexed_by_cnpj(cnpj: user_params[:cnpjs])

        product_by_establishment = ProductsByBusinessEstablishment.new
        ideal_products = product_by_establishment.ideal_products(user_params, quantity_by_product, establishments)

        route_generator = connect_routific_api

        product = Product.new
        products = product.products_indexed_by_getin_code(getin_code: user_params[:getin_codes])

        optimized_route = route_generator.generate_route(ideal_products, current_location)
        ideal_fair = route_generator.build_ideal_fair(
          ideal_products,
          optimized_route,
          products,
          user_params[:getin_codes]
        )

        render json: ideal_fair,
               status: :ok
      end

      private

      def quantity_by_product
        hash = {}
        params[:getin_codes].each do |getin_code|
          hash[getin_code[:code]] = { quantity: getin_code[:quantity] }
        end
        hash
      end

      def connect_routific_api
        token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MjIzYjE5Y2JhZGE0OTAwMTgxNTc4ZmUiLCJpYXQiOjE2NTQ3NzY1MTl9.ZMajv4JpiOASOcas18Na6Pu_YNJGZwJfdVqSysLgh3s'

        RouteGenerator.set_token(token)
        RouteGenerator.new
      end
    end
  end
end
