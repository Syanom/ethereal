class CreateAdd < ActiveRecord::Migration[6.1]
  def change
    create_table :adds do |t|
      t.boolean :flat
      t.integer :price_tl
      t.integer :price_rub
      t.integer :price_usd
      t.integer :price_eur
      t.boolean :house
      t.boolean :for_sale
      t.boolean :for_rent
      t.integer :square_brut
      t.integer :square_net
      t.integer :rooms
      t.integer :living_rooms
      t.integer :building_age
      t.integer :floor
      t.integer :max_floor
      t.integer :aidat
      t.string :heating
      t.integer :number_of_bathrooms
      t.boolean :furnished
      t.boolean :site
      t.boolean :elevator
      t.boolean :credit_available
      t.boolean :video_call_available
      t.boolean :active, default: true
      t.text :description
      t.string :main_image

      t.timestamps
    end
  end
end
