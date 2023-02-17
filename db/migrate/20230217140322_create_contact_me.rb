class CreateContactMe < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_mes do |t|
      t.string :phone_number
      t.string :email
      t.boolean :contact_with_whatsapp, default: false
      t.boolean :contacted, default: false

      t.timestamps
    end
  end
end
