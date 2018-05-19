class Publisher < ApplicationRecord
  # Friendly ID
  extend FriendlyId
  friendly_id :name, use: :slugged

  # Associations
  has_many :games

  # Validations
  validates :name, presence: true
  validates :website, format: { with: URI.regexp }

  private def should_generate_new_friendly_id?
    name_changed?
  end
end
