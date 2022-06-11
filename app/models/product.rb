# frozen_string_literal: true

class Product < ApplicationRecord
  def products_indexed_by_getin_code(where)
    Product.where(where).index_by(&:getin_code)
  end

  def create!(attrs)
    product = Product.find_by(getin_code: attrs['codGetin'])

    return unless product.nil?

    Product.create!(
      # code: attrs[''],
      getin_code: attrs['codGetin'],
      cfop_code: attrs['codCfop'],
      ncm_code: attrs['codNcm'],
      anp_code: attrs['codProdutoAnp'],
      comercial_unit_code: attrs['codUnidadeComercial'],
      description: attrs['dscProduto']
    )
  end
end
