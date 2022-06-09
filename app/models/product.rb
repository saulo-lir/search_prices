# frozen_string_literal: true

class Product < ApplicationRecord
  def products_indexed_by_getin_code(where)
    Product.where(where).index_by(&:getin_code)
  end
end
