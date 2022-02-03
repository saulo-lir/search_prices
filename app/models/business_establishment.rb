# frozen_string_literal: true

class BusinessEstablishment < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  reverse_geocoded_by :latitude, :longitude
  #after_validation :reverse_geocode

  def address
    [street, number, neighborhood, zip_code, city_ibge_code, city, latitude, longitude].compact.join(', ')
  end

  def get_establishment_by_current_location(location)
    BusinessEstablishment.near([location[:latitude], location[:longitude]], 5, units: :km)
  end
end
