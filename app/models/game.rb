class Game < ApplicationRecord
  # Friendly ID
  extend FriendlyId
  friendly_id :name, use: :slugged

  # Associations
  belongs_to :publisher

  # Validations
  validates :name, presence: true
  validates :publisher, presence: true

  # Scopes
  default_scope { order(:id) }

  private def should_generate_new_friendly_id?
    name_changed?
  end
end
