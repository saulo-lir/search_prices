# frozen_string_literal: true

require 'routific'

module V1
  module SearchPrices
    class EstablishmentsController < ApplicationController
      def index
        establishments = BusinessEstablishment.new
        establishments = establishments.get_establishment_by_current_location(current_location)

        render json: BusinessEstablishmentSerializer.new(establishments).serializable_hash,
               status: :ok
      end
    end
  end
end
