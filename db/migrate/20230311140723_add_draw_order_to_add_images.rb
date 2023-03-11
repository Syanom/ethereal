class AddDrawOrderToAddImages < ActiveRecord::Migration[6.1]
  def change
    add_column :add_images, :draw_order, :integer
  end
end
