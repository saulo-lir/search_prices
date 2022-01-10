# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products, id: :uuid do |t|
      t.string :code
      t.string :getin_code
      t.string :cfop_code
      t.string :ncm_code
      t.string :anp_code
      t.string :comercial_unit_code
      t.string :description
    end
  end
end
