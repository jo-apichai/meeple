class Publisher < ApplicationRecord
  # Friendly ID
  extend FriendlyId
  friendly_id :name, use: :slugged

  # Associations
  has_many :games

  # Validations
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :website, format: { with: URI.regexp }, allow_blank: true

  private def should_generate_new_friendly_id?
    name_changed?
  end
end
