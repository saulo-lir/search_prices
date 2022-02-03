# frozen_string_literal: true

class ProductsByBusinessEstablishment < ApplicationRecord
  def get_prices(attrs)
    ProductsByBusinessEstablishment.where(attrs)
  end

  # TO DO: Concluir query
  def products_grouped_by_establishment(getin_codes, cnpjs)
    ProductsByBusinessEstablishment.where({ getin_code: getin_codes, cnpj: cnpjs })
  end
end
