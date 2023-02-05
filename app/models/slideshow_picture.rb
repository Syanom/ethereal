class SlideshowPicture < ApplicationRecord
  mount_uploader :image, ImageUploader
end
