class BusinessEstablishmentSerializer
  include JSONAPI::Serializer
  attributes :id,
             :cnpj,
             :company_name,
             :trade_name,
             :phone,
             :street,
             :number,
             :neighborhood,
             :zip_code,
             :city_ibge_code,
             :city,
             :state,
             :latitude,
             :longitude
end
