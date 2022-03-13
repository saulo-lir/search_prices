# frozen_string_literal: true

class ProductsByBusinessEstablishment < ApplicationRecord
  def get_prices(attrs)
    ProductsByBusinessEstablishment.where(attrs)
  end

  def products_grouped_by_establishment(getin_codes, cnpjs)
    products = ProductsByBusinessEstablishment.where({ getin_code: getin_codes, cnpj: cnpjs })
    getin_codes_not_found = getin_codes - products.pluck(:getin_code)
    products = products.sort_by(&:value_last_sale)
    products = products.group_by(&:cnpj)
    [products, getin_codes_not_found]
  end
end
