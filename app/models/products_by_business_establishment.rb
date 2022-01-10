# frozen_string_literal: true

class ProductsByBusinessEstablishment < ApplicationRecord
  has_many :products, foreign_key: 'product_id'
  has_many :establishments, foreign_key: 'establishment_id'
end
