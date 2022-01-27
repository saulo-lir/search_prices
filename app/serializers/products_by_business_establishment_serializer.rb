class ProductsByBusinessEstablishmentSerializer
  include JSONAPI::Serializer
  attributes :id,
             :getin_code,
             :cnpj
end
