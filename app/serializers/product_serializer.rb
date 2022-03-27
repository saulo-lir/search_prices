class ProductSerializer
  include JSONAPI::Serializer
  attributes :id,
             :code,
             :getin_code,
             :cfop_code,
             :ncm_code,
             :anp_code,
             :comercial_unit_code,
             :description
end
