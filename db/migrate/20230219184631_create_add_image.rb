class CreateAddImage < ActiveRecord::Migration[6.1]
  def change
    create_table :add_images do |t|
      t.string :image
      t.references :add, null: false, foreign_key: true

      t.timestamps
    end
  end
end
