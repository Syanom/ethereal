class Add < ApplicationRecord
  mount_uploader :main_image, ImageUploader
  mount_uploaders :images, ImageUploader
  serialize :images, JSON
end
