# frozen_string_literal: true

class ProductsByBusinessEstablishment < ApplicationRecord
  def get_prices(attrs)
    ProductsByBusinessEstablishment.where(attrs)
  end
end
