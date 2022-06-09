# frozen_string_literal: true

require 'routific'

class RouteGenerator < Routific
  def generate_route(products, current_location)
    establishments = products.pluck(:establishment).uniq

    fill_establishments_to_visit(establishments)
    fill_vehicle(current_location)

    self.get_route
  end

  def build_ideal_fair(products, optimized_route, products_indexed_by_getin_code)
    route = sanitize_route(optimized_route)
    fair = build_fair_by_establishments(products, products_indexed_by_getin_code)

    route.map do |point|
      fair[point.location_id]
    end
  end

  private

  def fill_establishments_to_visit(establishments)
    visits = establishments.map do |establishment|
      {
        'id' => establishment[:cnpj],
        'start' => '9:00',
        'end' => '12:00',
        'duration' => 10,
        'location' => {
          'name' => establishment[:name],
          'lat' => establishment[:latitude],
          'lng' => establishment[:longitude]
        }
      }
    end

    visits.each do |visit|
      self.set_visit(visit['id'], visit)
    end
  end

  def fill_vehicle(current_location)
    self.set_vehicle(
      'my_car', {
        'start_location' => {
          'name' => 'Casa',
          'lat' => current_location[:latitude],
          'lng' => current_location[:longitude]
        },
        'end_location' => {
          'name' => 'Casa',
          'lat' => current_location[:latitude],
          'lng' => current_location[:longitude]
        },
        'shift_start' => '8:00',
        'shift_end' => '12:00'
      }
    )
  end

  def sanitize_route(optimized_route)
    route = optimized_route.vehicle_routes.first.second
    route.shift
    route.pop
    route
  end

  def build_fair_by_establishments(products, products_indexed_by_getin_code)
    hash = {}
    products.each do |product|
      hash[product[:establishment][:cnpj]] ||= []

      if hash[product[:establishment][:cnpj]].first.nil?
        hash[product[:establishment][:cnpj]] << {
          establishment: {
            cnpj: product[:establishment][:cnpj],
            name: product[:establishment][:name],
            latitude: product[:establishment][:latitude],
            longitude: product[:establishment][:longitude],
            total_products: 0,
            total_value: 0
          }
        }
        hash[product[:establishment][:cnpj]] << { products: [] }
      end

      establishment = hash[product[:establishment][:cnpj]].first[:establishment]
      establishment[:total_products] += 1
      establishment[:total_value] += product[:value]
      establishment[:total_value] = establishment[:total_value].round(2)
      hash[product[:establishment][:cnpj]].second[:products] << {
        name: products_indexed_by_getin_code[product[:getin_code]].description,
        getin_code: product[:getin_code],
        value: product[:value]
      }
    end
    hash
  end
end
