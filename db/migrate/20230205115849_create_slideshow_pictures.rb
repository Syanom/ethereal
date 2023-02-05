class CreateSlideshowPictures < ActiveRecord::Migration[6.1]
  def change
    create_table :slideshow_pictures do |t|
      t.boolean :active
      t.string :picture

      t.timestamps
    end
  end
end
