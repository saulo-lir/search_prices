# frozen_string_literal: true

class CreateBusinessEstablishment < ActiveRecord::Migration[6.0]
  def change
    create_table :business_establishments, id: :uuid do |t|
      t.string :cnpj
      t.string :company_name
      t.string :trade_name
      t.string :phone
      t.string :street
      t.string :number
      t.string :neighborhood
      t.string :zip_code
      t.string :city_ibge_code
      t.string :city_name
      t.string :latitude
      t.string :longitude
    end
  end
end
