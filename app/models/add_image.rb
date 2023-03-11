class AddImage < ApplicationRecord
  belongs_to :add
  mount_uploader :image, ImageUploader
  validate :image_present
  default_scope { order(:draw_order) }

  private

  def image_present
    errors.add(:image, 'must present') if image.url.nil? || image.url.empty?
  end
end
