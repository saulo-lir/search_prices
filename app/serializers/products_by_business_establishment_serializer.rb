class ProductsByBusinessEstablishmentSerializer
  include JSONAPI::Serializer
  attributes :id,
             :getin_code,
             :cnpj,
             :unit_value_last_sale,
             :value_last_sale,
             :minimum_value_sold,
             :maximum_value_sold,
             :last_sale_issue_date,
             :last_sale_issue_date_description
end
