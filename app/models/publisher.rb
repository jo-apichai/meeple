class Publisher < ApplicationRecord
  # Friendly ID
  extend FriendlyId
  friendly_id :name, use: :slugged

  # Associations
  has_many :games

  # Validations
  validates :name, presence: true
  validates :website, format: { with: URI.regexp }
end
