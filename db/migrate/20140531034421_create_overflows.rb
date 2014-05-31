class CreateOverflows < ActiveRecord::Migration
  def change
    create_table :overflows do |t|
      t.string :item_type
      t.boolean :perishable
      t.string :quantity
      t.datetime :expiration
      t.text :description
      t.references :agency, index: true

      t.timestamps
    end
  end
end
