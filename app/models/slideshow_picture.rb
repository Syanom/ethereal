class SlideshowPicture < ApplicationRecord
  mount_uploader :picture, PictureUploader
end
