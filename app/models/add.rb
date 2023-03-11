class Add < ApplicationRecord
  has_many :add_images, dependent: :destroy
  mount_uploader :main_image, ImageUploader
  validate :image_present

  accepts_nested_attributes_for :add_images

  private

  def image_present
    errors.add(:main_image, 'must present') if main_image.url.nil? || main_image.url.empty?
  end
end
