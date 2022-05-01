# frozen_string_literal: true

require 'routific'

module V1
  module SearchPrices
    class EstablishmentsController < ApplicationController
      def index
        location = current_location
        establishments = BusinessEstablishment.new
        establishments = BusinessEstablishmentSerializer.new(
          establishments.get_establishment_by_current_location(location)
        ).serializable_hash
        establishments[:data] = establishments[:data].push(current_location: location)

        render json: establishments,
               status: :ok
      end

      private

    # Atualmente está vindo as coordenadas da rua do sol no centro de Maceió: {:latitude=>-9.6658, :longitude=>-35.7353}
    def current_location
      current_location = {}
      current_location[:latitude] = request.location.latitude
      current_location[:longitude] = request.location.longitude
      { latitude: -9.6658, longitude: -35.7353 }
    end
    end
  end
end
