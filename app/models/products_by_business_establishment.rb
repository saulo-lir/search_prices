# frozen_string_literal: true

class ProductsByBusinessEstablishment < ApplicationRecord
  def get_prices(attrs)
    ProductsByBusinessEstablishment.where(attrs)
  end

  def where(attrs)
    products = ProductsByBusinessEstablishment.where(attrs)
    getin_codes_not_found = attrs[:getin_code] - products.pluck(:getin_code)
    [products, getin_codes_not_found]
  end

  def ideal_products(products, quantity_by_product, establishments)
    @total_products_and_values = total_products_and_values_by_establishments(products, quantity_by_product)
    wanted_products = products_indexed_by_getin_code(products, establishments, quantity_by_product)
    wanted_products = cheaper_products(products.pluck(:getin_code), wanted_products)
    filter_repeated_products(wanted_products)
  end

  private

  attr_reader :total_products_and_values

  def total_products_and_values_by_establishments(products, quantity_by_product)
    hash = {}
    products.each do |product|
      hash[product[:cnpj]] ||= []

      if hash[product[:cnpj]].first.nil?
        hash[product[:cnpj]] << { total_products: 0 }
        hash[product[:cnpj]] << { total_value: 0 }
      end

      quantity = quantity_by_product[product[:getin_code]][:quantity]
      hash[product[:cnpj]].first[:total_products] += quantity
      hash[product[:cnpj]].second[:total_value] += quantity * product[:value_last_sale].to_f
    end
    hash
  end

  def products_indexed_by_getin_code(products, establishments, quantity_by_product)
    hash = {}
    products.each do |product|
      hash[product.getin_code] ||= []
      hash[product.getin_code] << {
        getin_code: product.getin_code,
        unit_value: product.value_last_sale.to_f,
        quantity: quantity_by_product[product.getin_code][:quantity],
        subtotal: (quantity_by_product[product.getin_code][:quantity] * product.value_last_sale.to_f).round(2),
        establishment: {
          cnpj: product.cnpj,
          name: establishments[product.cnpj].trade_name || establishments[product.cnpj].company_name,
          total_products: total_products_and_values[product.cnpj].first[:total_products],
          total_value: total_products_and_values[product.cnpj].second[:total_value].round(2),
          latitude: establishments[product.cnpj].latitude,
          longitude: establishments[product.cnpj].longitude
        }
      }
    end
    hash
  end

  def cheaper_products(getin_codes, wanted_products)
    getin_codes.map do |getin_code|
      lowest_price = wanted_products[getin_code].pluck(:unit_value).min
      wanted_products[getin_code].select { |product| product[:unit_value] == lowest_price }
    end.uniq
  end

  def filter_repeated_products(wanted_products)
    wanted_products.map do |products|
      filtered_products = []

      filtered_products = filter_by_establishment_with_more_products(products) if repeated_products?(products)

      filtered_products = filter_by_cheapest_establishment(filtered_products) if repeated_products?(filtered_products)

      filtered_products = filtered_products.first if repeated_products?(filtered_products)

      filtered_products.empty? ? products : filtered_products
    end.flatten
  end

  def repeated_products?(products)
    products.length > 1
  end

  def filter_by_establishment_with_more_products(products)
    more_products = products.pluck(:establishment).pluck(:total_products).max
    products.select { |product| product[:establishment][:total_products] == more_products }
  end

  def filter_by_cheapest_establishment(products)
    lowest_total_value = products.pluck(:establishment).pluck(:total_value).min
    products.select { |product| product[:establishment][:total_value] == lowest_total_value }
  end
end
