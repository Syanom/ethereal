class ContactMe < ApplicationRecord
  validates :email, presence: true, unless: ->(contact_me) { contact_me.phone_number.present? }
  validates :phone_number, presence: true, unless: ->(contact_me) { contact_me.email.present? }
end
