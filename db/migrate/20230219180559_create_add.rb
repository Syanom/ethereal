class CreateAdd < ActiveRecord::Migration[6.1]
  def change
    create_table :adds do |t|
      t.boolean :flat
      t.boolean :house
      t.boolean :for_sale
      t.boolean :for_rent
      t.integer :square
      t.integer :rooms
      t.integer :living_rooms
      t.integer :building_age
      t.integer :number_of_floors
      t.string :heating
      t.integer :number_of_bathrooms
      t.boolean :furnished
      t.string :user_status
      t.boolean :credit_available
      t.boolean :video_call_available
      t.boolean :active, default: true
      t.text :description
      t.string :main_image
      t.string :images

      t.timestamps
    end
  end
end
