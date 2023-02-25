class AddHeaderToAdd < ActiveRecord::Migration[6.1]
  def change
    add_column :adds, :header, :string
  end
end
