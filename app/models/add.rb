class Add < ApplicationRecord
  has_many :add_images
  mount_uploader :main_image, ImageUploader
  validate :image_present

  private

  def image_present
    errors.add(:main_image, 'must present') if main_image.url.nil? || main_image.url.empty?
  end
end
