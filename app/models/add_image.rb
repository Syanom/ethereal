class AddImage < ApplicationRecord
  belongs_to :add
  mount_uploader :image, ImageUploader
  validate :image_present

  private

  def image_present
    errors.add(:image, 'must present') if image.url.nil? || image.url.empty?
  end
end
