# frozen_string_literal: true

class CreateProductsByBusinessEstablishment < ActiveRecord::Migration[6.0]
  def change
    create_table :products_by_business_establishments, id: :uuid do |t|
      t.string :getin_code
      t.string :cnpj
      t.decimal :unit_value_last_sale
      t.decimal :value_last_sale
      t.decimal :minimum_value_sold
      t.decimal :maximum_value_sold
      t.timestamp :last_sale_issue_date
      t.string :last_sale_issue_date_description
    end
  end
end
