class AddImage < ApplicationRecord
  belongs_to :add
  mount_uploader :image, ImageUploader
end
