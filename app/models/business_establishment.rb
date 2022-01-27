# frozen_string_literal: true

class BusinessEstablishment < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  def get_establishment_by_current_location(location)
    BusinessEstablishment.near([location[:latitude], location[:longitude]], 5, units: :km)
  end

  def address
    [street, number, neighborhood, zip_code, city_ibge_code, city_name, latitude, longitude].compact.join(', ')
  end
end
