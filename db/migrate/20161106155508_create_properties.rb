class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.integer :address_id
      t.integer :bedrooms
      t.integer :garages
      t.boolean :party_area
      t.float :private_area
      t.float :public_area
      t.boolean :security
      t.boolean :public_patio
      t.boolean :public_pool

      t.timestamps
    end
  end
end
