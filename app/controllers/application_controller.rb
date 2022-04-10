# frozen_string_literal: true

class ApplicationController < ActionController::API

  private

  # Atualmente está vindo as coordenadas da rua do sol no centro de Maceió: {:latitude=>-9.6658, :longitude=>-35.7353}
  def current_location
    current_location = {}
    current_location[:latitude] = request.location.latitude
    current_location[:longitude] = request.location.longitude
    current_location
  end
end

