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
    BusinessEstablishment.near([location[:latitude], location[:longitude]], 8, units: :km).to_a
  end

  def establishments_indexed_by_cnpj(where)
    BusinessEstablishment.where(where).index_by(&:cnpj)
  end

  def create!(attrs)
    BusinessEstablishment.create!(
      cnpj: attrs['numCNPJ'],
      company_name: attrs['nomRazaoSocial'],
      trade_name: attrs['nomFantasia'],
      phone: attrs['numTelefone'],
      street: attrs['nomLogradouro'],
      number: attrs['numImovel'],
      neighborhood: attrs['nomBairro'],
      zip_code: attrs['numCep'],
      city_ibge_code: attrs['codIBGEMunicipio'],
      city: attrs['nomMunicipio'],
      state: 'AL',
      latitude: attrs['numLatitude'],
      longitude: attrs['numLongitude']
    )
  end
end
