class CreateAttributeproducts < ActiveRecord::Migration[5.1]
  def change
    create_table :attributeproducts do |t|
      t.text :range
      t.references :product, foreign_key: true
      t.references :attribute, foreign_key: true

      t.timestamps
    end
  end
end