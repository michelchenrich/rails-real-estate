class CreateRentals < ActiveRecord::Migration[5.0]
  def change
    create_table :rentals do |t|
      t.integer :property_id
      t.float :price

      t.timestamps
    end
  end
end
